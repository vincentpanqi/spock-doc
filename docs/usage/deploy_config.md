# 部署模块

部署在spock上的容器服务，使用的是kirk的kubernetes环境，每个服务需要配置相关的k8s配置yaml，可遵循[官方配置最佳实践](https://kubernetes.io/docs/concepts/configuration/overview/)

## 准备工作

无论部署在什么环境下，都必须先明确产品的部署架构，主要包括：

    理清产品中的服务、服务之间的依赖关系以及服务的启动顺序
    理清产品所依赖的第三方基础组件

## 模板化

spock上运行的产品属于模板化执行，根据事先制定模板，提供稳定运行产品的能力。在spock上使用容器化的产品，很重要的一点就是管理员进行部署模板定制，下面简单介绍一下spock模板的概念。

部署模板分为三层：产品模板、服务组模板和服务模板, 三者之间的关系如下图所示。

![产品模板](_images/product-template.png "产品模板")

<!-- - 产品模板由多个服务组模板组成，服务组的作用一方面是定义服务的分类，比如产品依赖一些基础组件，如数据库，消息队列，初始化工具等等；另一方面，定义先后启动顺序。
- 服务组由多个服务模板组成，服务模板中定义了单个服务的版本，副本数量，配置信息，网络环境等等 -->

spock上部署服务的结构如下:
- 产品由多个服务组组成，服务组之间可以有依赖关系（启动顺序有依赖）
- 服务组由多个服务组成，服务之间可以有相互的依赖关系（启动顺序有先后），可以并发启动

> 建议用法，基础组件归为一个服务组，并且第一顺位启动，基础依赖服务放一个组，第二顺位启动，其他服务按实际启动情况自行组织。

!> 模板对全局有效，对其操作需慎重！！！

## 服务模板样例

### 无状态服务

概念：服务运行的实例不会在本地存储需要持久化的数据，并且多个实例对于同一个请求响应的结果是完全一致的。

```yaml
# 外网可访问的网络配置
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: atboard-backend
spec:
  rules:
  - host: $Service$-$Namespace$.cs-spock.cloudappl.com    #*.cs-spock.cloudappl.com 泛域名，外网可访问
    http:
      paths:
      - backend:
          serviceName: portal-v4-atboard-backend
          servicePort: 9123
        path: /

# 内网可访问的网络配置
---
apiVersion: v1
kind: Service
metadata:
  name: portal-v4-atboard-backend
spec:
  ports:
    - protocol: TCP
      port: 9123
      targetPort: 9123
# 部署方式
---
apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: portal-v4-atboard-backend
spec:
  replicas: 1
  template:
    spec:
      imagePullSecrets:
        - name: qn-registry-secret  #拉index.qiniu.com镜像库spocktest账号下镜像的时候需要用到的secret
      containers:
        - image: index.qiniu.com/spocktest/atboard-backend:201709151717-v12-dev   #默认镜像，创建产品时，选择的默认镜像
          imagePullPolicy: Always
          name: atboard-backend
          ports:
            - protocol: TCP
              containerPort: 9123
          volumeMounts:                #将服务的配置mount到相应的路径下
            - name: atboard-api-conf
              mountPath: /atboard/conf
      volumes:
        - name:  atboard-api-conf
          configMap:
            name: atboard-api-configmap
            items:
              - key: atboard-api
                path: atboard-api.ini      

```


### 有状态服务

概念：服务的实例可以将一部分数据随时进行备份，并且在创建一个新的有状态服务时，可以通过备份恢复这些数据，以达到数据持久化的目的

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nsqd
spec:
  ports:
    - protocol: TCP
      name: tcp
      port: 4150
      targetPort: 4150
    - protocol: TCP
      name: http
      port: 4151
      targetPort: 4151
  clusterIP: None
---
apiVersion: apps/v1beta1
kind: StatefulSet
metadata:
  name: nsqd
spec:
  serviceName: nsqd
  replicas: 1
  template:
    spec:
      containers:
        - name: nsqd
          image: nsqio/nsq:v1.0.0-compat
          imagePullPolicy: Always
          command:
            - /nsqd
          args:
            - -lookupd-tcp-address=$Product$-nsqlookupd:4160
            - -broadcast-address=$Product$-nsqd-0.$Product$-nsqd
          ports:
            - protocol: TCP
              name: tcp
              containerPort: 4150
            - protocol: TCP
              name: http
              containerPort: 4151
          volumeMounts:   #数据挂盘
            - mountPath: /data
              name: data
      volumes:
        - name: data
          emptyDir: {}

```



### 多实例服务
1. 用无状态的服务模板部署一个单副本服务，后进行服务副本扩容（单用户有效）

2. Deployment配置中的replicas设置成副本数量

``` yaml
kind: Deployment
spec:
  replicas: 2

```


## 服务配置

服务配置即为服务的启动所需的配置文件。原理是利用k8s的configmap配置，挂载到容器的相应的配置文件目录下，全局的服务配置涉及到服务模板中的`配置管理`和`模板信息`，个人产品的服务配置可在对应服务的配置管理中设置，这个章节中不详细叙述。


### 配置管理
通过服务模板的配置管理来做服务配置的管理

<video id="video" controls="" preload="none" poster="_images/video_poster.png" width="600" >
      <source id="mp4" src="http://p2akugain.bkt.clouddn.com/service_config.mov" type="video/mp4"></video>

首先需要创建一个配置名称，然后在配置信息中，填写你的配置文件或者环境变量的键/值信息

若该服务可适用多个产品线，那么建议把配置文件中的key和value抽离出来，利用环境变量，根据不同的产品信息，渲染不同的值

### 模板信息

配置添加完成后，明确服务读取配置的方式，如果是从文件中读取，那么需要将configmap挂载在容器的相应位置，在服务的yaml文件中，添加如下配置

```yaml
apiVersion: apps/v1beta1
kind: Deployment
spec:
  template:
    spec:
       containers:
        name: index
          volumeMounts:
                - name: gaea-api-conf
                  mountPath: /portalv4/gaea/conf/gaea-api.ini  #挂载的文件路径
                  subPath: gaea-api.ini                        #挂载文件的名称
                ...
        volumes:
          - name:  gaea-api-conf
            configMap:
              name: gaea-api-configmap                        #服务配置名称
              items:
                - key: gaea-api                               #服务配置中的具体key
                  path: gaea-api.ini                    
              ...

```

若服务从环境变量中读取配置，可通过设置env的方式，来设置容器的环境变量，配置如下
```yaml
apiVersion: apps/v1beta1
kind: Deployment
spec:
  template:
    spec:
       containers:
        name: index
        env:
        # 定义环境变量名称
          - name: SPECIAL_LEVEL_KEY
            valueFrom:
              configMapKeyRef:
                # 服务的配置名称
                name: special-config
                # 配置中的具体key
                key: special.how
```