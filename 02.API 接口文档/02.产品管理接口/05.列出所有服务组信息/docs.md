---
title: 列出所有服务组信息
taxonomy:
    category: docs
---

### 请求:

    GET /stacks

### 返回:

**Code:** `200`

**Content:** 

```
[
  {
    "user_name": "fulichao",
    "stack_name": "kodo-1",
    "services":
    [
      {
        "service_name": "zoneproxy",
        "state": "DEPLOYED",
        "status": "RUNNING",
        "domains":
        [
          "fulichao.zoneproxy.kodo-1.spocktest.qiniu.io"
        ],
        "image":
        {
          "name": "spocktest/zoneproxy.kodo-1",
          "tag": "latest"
        }
      }
    ],
    "metadata": null,
    "is_deployed": false,
    "status": "PARTIALLY-RUNNING"
  },
  {
    "user_name": "fulichao",
    "stack_name": "kodo-2",
    "services":
    [
      {
        "service_name": "ptfdstg-2",
        "state": "DEPLOYED",
        "status": "RUNNING",
        "domains":
        [
          "fulichao.ptfdstg-2.kodo-2.spocktest.qiniu.io"
        ],
        "image":
        {
          "name": "spocktest/ptfdstg-2.kodo-2",
          "tag": "latest"
        }
      }
    ],
    "metadata": null,
    "is_deployed": true,
    "status": "RUNNING"
  }
]
```

### 返回参数说明：

|参数|描述|
|---|---|
|user_name|创建服务的用户名，当前用户名|
|stack_name|服务组名称|
|services|服务组中各服务的详细状态，详见“查看服务”|
|metadata|元数据|
|is_deployed|服务组中所有服务都处于Deployed状态|
|status|服务组中所有容器的总体运行状态|


### 错误信息:

**Code:** `625`
  
**Content:** `{ "message" : "List Stack Error", "code": "625"}`