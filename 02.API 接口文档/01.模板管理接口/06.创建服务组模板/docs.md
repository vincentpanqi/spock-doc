---
title: 创建服务组模板
taxonomy:
  category: docs
---

#### 注意事项
- 需要管理员权限

### 请求:

  POST /api/templates/stacks


### 请求参数:

**Type:** `application/json`

**Content:**

```
{
      "stack_name": "stack-2",
      "internal": false,
      "init_scripts": [
          {
          "service_name": "service-2",
          "command": "urlencode"
          }
      ],
      "services": [
          {
              "service_name": "service-2",
              "unit_type": "1U1G",
              "envs": [{"key":"value"},{"key":"value"}],
              "command": ["ls"],
              "config_paths": ["/disk1"],
              "volume_args": [
                  {
                  "mount_path": "/disk1",
                  "unit_type": "SSD1_10G"
                  }
              ],
              "image": {
                  "name": "service-1",
                  "tag": "test"
              },
              "access_points": [{
                "type": "domain",
                "proto": "http",
                "ap_port": 25000,
                "backend_port": 25000
              }],
              "test": {
                  "command": "ls",
                  "result_path": "/disk1"
              }
          }
      ]
  }
```
### 服务组参数:
|参数|描述|
|---|---|
|stack_name|服务组名称，全局唯一|
|internal|是否为内部服务，暂无使用场景|
|init_scripts|初始化脚本，服务创建成功后执行|
|services|具体服务配置，详细配置说明见下表|


- services:

|参数|描述|
|---|---|
|service_name|服务名称，全局唯一|
|unit_type   |详见“容器规格”   |
|envs        |服务运行时，注入的环境变量|
|command     |容器运行命令和参数|
|config_paths|服务相关的配置文件，用于配置模版渲染|
|volume_args |存储卷参数,规格详见“存储卷规格”。服务创建成功后自动挂盘，服务更新／重启，存储卷内的数据不会丢失，命名格式：/^a-z0-9[a-z0-9]$/|
|image       |镜像名称|
|access_points|容器网络配置，可配置多组网络，详见“网络规格“|
|test        |测试服务专属配置；command：测试脚本执行命令；result_path: 测试结果所在目录|




### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "Invalid StackTemplateArgs", "code": "400", "description": "error details"}`

**Code:** `610`

**Content:** `{ "message" : "Create Template Error", "code": "610", "description": "error details"}`

