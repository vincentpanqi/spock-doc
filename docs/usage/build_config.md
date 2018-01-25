# 编译模块

## 准备工作

无论用何种工具编译一个服务，首先都要明确编译需要的依赖，包括：

    理清服务编译的代码依赖（比如依赖base库，开源库等）
    理清服务编译的环境依赖（比如go版本，node版本，编译工具等）

## 编译模块v1.0

即将下线，buildv2.0已上线，请试用buildv2.0

spock 编译模块v1.0版本利用reaper进行编译二进制，编译docker 镜像，打包二进制以及镜像和二进制存档等操作。

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

pipeline包括build，publish，archive三个步骤步骤，各步骤的主要功能如下：

build：编译服务，打tar包，pipeline中可包含多个build；

publish：根据repo中的dockerfile编译镜像，并且进行镜像存档，即推送到相应的镜像库，pipeline中只允许存在一个publish；

archive：将tar包归档，上传至kodo，pipeline中只允许存在一个archive。


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

编译过程执行原则：
> - 若pr中不含`.drone.yml`或`.drone.sh`文件的更新，则编译过程按照所选branch中的`.drone.yml`执行
> - 若pr中包含`.drone.yml`或`.drone.sh`文件的更新，则编译过程按照所选pr中的`.drone.yml`执行


### 镜像的选择和使用：
不同的编译过程所需的系统环境有所不同，比如 clone 环境中需要github读库权限，build环境则为实际编译服务所需环境（go，node）等等。目前，spock提供三种使用镜像的方式，如下所示。

1. 直接使用spock提供的[公共镜像](https://cf.qiniu.io/pages/viewpage.action?pageId=40409309)
2. 直接使用公开镜像库的镜像，yaml cmd中添加命令  “curl http://spock.dev.qiniu.io/assets/env.sh -o env.sh && source ./env.sh” 来获取spock提供的环境变量
3. 自定义镜像：参照 [wrapper插件](https://github.com/qbox/aslan-platform/blob/develop/reaper/wrapper-plugin/README.md)，在官方镜像上加一层entrypoint ，添加 wrapper 插件
</br>

## 编译模块v2.0

spock 编译模块v2.0版本提供自定义编译环境，脚本化编译过程，配置无需入库，简化debug方式。

<video id="video" controls="" preload="none" poster="_images/video_poster.png" width="600" >
      <source id="mp4" src="http://p2akugain.bkt.clouddn.com/buildv2%E9%A1%B5%E9%9D%A2.mov?v=asdfas" type="video/mp4"></video>

</br>

整个编译模块分成工作目录设置、编译环境、代码库、服务名称、敏感信息和编译脚本，下面详细介绍这几部分的具体功能。

### 工作目录

buildv2.0编译目录通过nfs的方式持久化存储在物理机上，若每次编译项目需要一个干净的工作目录，建议配置开启清理工作目录

### 编译环境

编译环境包括构建过程中需要的系统环境和安装在系统上的工具。

目前仅支持三种常用Ubuntu系统环境版本：Ubuntu12.02、Ubuntu14.04和Ubuntu16.04；

应用工具包括不同版本的go、govendor、node、bower、yarn、phantomjs等等。如果有其他应用或者版本需求，请联系系统管理员。
> 安装过程中有依赖的应用工具，在新增过程中需要注意先后次序，例:安装govendor之前必须安装go，那么必须先选go，再选择安装govendor。


### 代码库

#### 基本设置

代码库拥有者（owner）：spock支持拉开源库和qbox组织下的所有代码。

名称（repo）：代码库的名称。

默认分支（branch）：创建工作流任务时，默认选取的分支，与高级配置中的默认设置配合使用，可以限制每次编译的branch。

#### 高级配置

Remote name：指定远程仓库名称，默认origin。

克隆目录名：定义项目目录名称。

子模块：开启后，每次同步submodule中配置的代码库

默认设置：开启后，默认使用pipeline设置中的默认配置，创建工作任务时不提供参数化方式

<!-- ### 服务名称

编译服务的名称 -->

### 敏感信息

若编译脚本中存在敏感信息，如AK、SK等信息，可以设置敏感信息来隐藏console输出

### 编译脚本

用户可在脚本里使用如下环境变量：

|变量名称|作用|
|-------|---|
|WORKSPACE|工作目录|
|IMAGE|输出镜像名称|
|PKG_FILE|输出镜像名称|
|DIST_DIR|编译出 tar 包的目的目录|
|SERVICE|编译的服务名称|
|REPO_NAME_PR|代码库的prID。代码库名称中的所有“-”和“.”，在变量中全部替换成“_”，如aslan-platform的prID为$ASLAN_PLATFORM_PR|





