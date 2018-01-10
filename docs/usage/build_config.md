# 编译模块

## 准备工作

无论用何种工具编译一个服务，首先都要明确编译需要的依赖，包括：

    理清服务编译的代码依赖（比如依赖base库，开源库等）
    理清服务编译的环境依赖（比如go版本，node版本，编译工具等）

## 编译模块v1.0

spock 编译模块v1.0版本采用reaper进行编译二进制，编译docker 镜像，打包二进制以及镜像和二进制存档等步骤

!>服务编译可以选择平台提供的[公共镜像](https://cf.qiniu.io/pages/viewpage.action?pageId=40409309)，或者使用任何公开镜像库的镜像来自定义编译镜像

### 开始了解spock的编译

spock的编译过程由`.drone.yml`描述文件来定义，`.drone.yml`必须位于相应repo的根目录下才可被执行。

### 如何优雅的配置.drone.yml

`.drone.yml` 文件由workspace、clone、pipeline三部分组成.

- workspace

指定编译过程中，所有代码库所在的工作目录

```yaml
workspace：
	base: /workspace
```

- clone

从`github`中拉取编译代码库，以及相关依赖库，仅支持公开库或者qbox组织下代码库

```yaml
clone:
  # 拉主库以及clone后的预操作，比如：使用yarn或者govendor等工具拉编译依赖
  portal-v4.git:
    image: index.qiniu.com/spock/git-plugin:node  
    pull: true
    path: /workspace/portal-v4
    script:
      - if [[ $SERVICE == "distribute-frontend" ]]; then cd /workspace/portal-v4/portal/apps/pili_distribution && yarn install; fi

  # 公开库或者七牛依赖库下载方式
  base.git:
    image: index.qiniu.com/spock/git-plugin:cs-proxy
    pull: true
    remote_url: https://github.com/qbox/base.git    
    path: /workspace/base

```
参数说明: 
> - `image`: clone代码使用的容器环境
> - `pull: true`: 原则上必填，其作用是，若clone代码库的容器环境有变更，当次编译拉代码前会更新容器环境
> - `path`: 代码clone后，checkout的路径
> - `remote_url`: 仅适用于依赖库，必填，支持https和ssh两种拉代码的协议

- pipeline

pipeline包括build（可多个），publish（仅一个），archive（仅一个）步骤，各步骤的主要功能如下：

build：编译服务，打tar包；

publish：根据repo中的dockerfile编译镜像，并且进行镜像存档，即推送到相应的镜像库；

archive：将tar包归档，上传至kodo。


```yaml
pipeline:
  previous.build:
    image: index.qiniu.com/spock/go1.8.3_node5.11.0:latest
    pull: true
    script:
      - cd /workspace/portal-v4
      - if [[ ! $SERVICE =~ "-" ]]; then source ./.drone.sh && droneBuild $SERVICE; fi
    # 缓存方式
    cache:
      - /workspace/portal-v4/portal/front/node_modules
      - /workspace/portal-v4/portal/front/bower_components

  distribution_pandora_backend.build:
    image: index.qiniu.com/spock/golang:1.8.1
    pull: true
    script:
      - cd /workspace/portal-v4
      - if [[ $SERVICE == "distribute-backend" || $SERVICE == "pandora-backend" ]]; then source ./.drone.sh && droneBuild $SERVICE; fi
  
  # 自定义镜像 hub.c.163.com/nighca/fec-builder:1.4.5 from yanghanxing 
  distribution_frontend.build:
    image: hub.c.163.com/nighca/fec-builder:1.4.5
    pull: true
    environment:
      - BUILD_ENV=production
      - BUILD_ROOT=/fec/input/portal-v4/portal/apps/pili_distribution
      - HTTPS_PROXY=http://10.200.20.60:8118
      - HTTP_PROXY=http://10.200.20.60:8118
    script:
      - ln -s  /workspace /fec/input
      - cd /workspace/portal-v4
      - if [[ $SERVICE == "distribute-frontend" ]]; then source ./.drone.sh && droneBuild $SERVICE; fi
  
  #编译镜像，并推送到默认镜像仓库
  publish:
    image: index.qiniu.com/spock/docker-client
    pull: true
    environment:
      - PKG_PATH=/workspace/portal-v4/_package
    script:
      - mkdir -p $PKG_PATH
      - cd /workspace/portal-v4
      - source ./.drone.sh && dronePublish $SERVICE
  
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
  
  #tar包归档，上传至kodo bucket
  archive:
    image: index.qiniu.com/spock/kodo-plugin
    pull: true
    path: /workspace
 
```

</br>

`.drone.yml`中可用的环境变量：
> - `SERVICE` : 由工作流编译模块 服务名称 字段传入
> - `PKG` : 触发工作流任务时 Package File 字段传入
> - `IMAGE` : 触发工作流任务时 Image 字段传入


镜像选择和使用：
不同的编译过程所需的系统环境有所不同，如 clone 环境中需要github读库权限，build环境则为实际编译服务所需环境等等。spock提供三种使用镜像的方式，如下所示。

1. 直接使用spock提供的[公共镜像](https://cf.qiniu.io/pages/viewpage.action?pageId=40409309)
2. 直接使用公开镜像库的镜像，yaml cmd中添加命令  “curl http://spock.dev.qiniu.io/assets/env.sh -o env.sh && source ./env.sh” 来获取spock提供的环境变量
3. 自定义镜像：参照 [wrapper插件](https://github.com/qbox/aslan-platform/blob/develop/reaper/wrapper-plugin/README.md)，在官方镜像上加一层entrypoint ，添加 wrapper 插件

编译过程执行原则：
> - 若pr中不含`.drone.yml`或`.drone.sh`文件的更新，则编译过程按照所选branch中的`.drone.yml`执行
> - 若pr中包含`.drone.yml`或`.drone.sh`文件的更新，则编译过程按照所选pr中的`.drone.yml`执行


## 编译模块v2.0

spock 编译模块v2.0版本提供自定义编译环境，脚本化编译过程，配置无需入库，简化debug方式

即将上线，敬请期待……