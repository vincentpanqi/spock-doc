

目前，spock支持三种方式查询服务日志：页面查询，debugger工具和原生kubectl工具。
三种不同方式的主要适用场景如下：
- 页面查询，适用于查询日志输出在stdout的服务
- debugger工具，可登入服务容器，进行直接查询，适用于查询日志输出在日志文件的服务
- kubectl工具，既通过命令查询stdout中的输出，也可直接登入容器，查询日志文件较为方便，此外，kubectl可对容器做一些高级操作，详见[官方文档](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

!>spock提供三种方式，用户可自行选择，对于高级用户，推荐使用kubectl工具

</br>

## 页面查询

首先，确认服务是否处于`running`状态。如果服务容器非正常`running`，那么可进入服务详情页面查看错误信息，如下图所示。

![容器异常](_images/spock-pod-error.png)

如果服务运行正常且服务的日志输出在stdout中，那么可以在服务详情页面中，点击`容器日志`来查看服务的日志，如下所示。

<video id="video" controls="" preload="none" poster="_images/video_poster.png" width="600" >
      <source id="mp4" src="http://p2akugain.bkt.clouddn.com/%E9%A1%B5%E9%9D%A2%E6%9F%A5%E8%AF%A2%E6%97%A5%E5%BF%97.mov?v=afs" type="video/mp4"></video>

</br>

## debugger工具

[安装方式](cmd/debugger.md)

- 登录，目前使用测试环境ldap账号

```bash
debugger login --username <ldap username> --password <ldap password>
```
- 在spock 界面找到所要查询的服务名称，如下图所示，比如 portal-v4-atboard-backend-4270770443-x76td

![查看容器名称](_images/pod-name.png)

- 进入容器内部

```bash
debugger exec -it --pod portal-v4-atboard-backend-4270770443-x76td bash
```
![进入容器内部](_images/debugger-exec-pod.png)

</br>

## kubectl工具

[安装方式](cmd/kubectl.md)

- 查看服务容器列表

```bash
kubectl get po
```
如下所示

![查看服务容器列表](_images/kubectl-get-po.png)

- 查询标准输出日志方法

```bash
kubectl logs  <podname>
#查看历史log，例：kubectl logs portal-v4-qvm-backend-1884958998-6t8wm
kubectl logs -f <podname>
#类似tail -f，例：kubectl logs  -f ptfdm-3703976567-8s2j9

```

>更多logs用法，详见kubectl logs -h

- 登入服务容器，查看日志文件里的内容

```bash

kubectl exec -it <podname> bash

#登入容器，可对容器内的文件进行操作

```

>更多kubectl的使用姿势，详见kubectl官方文档
