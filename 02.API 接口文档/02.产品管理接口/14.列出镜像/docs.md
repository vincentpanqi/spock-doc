---
title: 列出镜像
taxonomy:
    category: docs
---

### 请求：

    GET /api/registry/images

### 返回：

**Code:** `200`

**Content:** 

```
[
  {
    "host": "index.qiniu.com",
    "owner": "spocktest",
    "name": "zoneproxy.kodo-1",
    "tag": "20170217-v2-develop"
  },
  {
    "host": "index.qiniu.com",
    "owner": "spocktest",
    "name": "zoneproxy.kodo-1",
    "tag": "latest"
  },
  {
    "host": "index.qiniu.com",
    "owner": "spocktest",
    "name": "acc",
    "tag": "20170427-v21-develop"
  },
  {
    "host": "index.qiniu.com",
    "owner": "spocktest",
    "name": "acc",
    "tag": "latest"
  }
]
```	

### 返回参数说明：

|参数|描述|
|---|---|
|host|registry域名|
|owner|registry用户名|
|name|服务名称，命名规则[a-z0-9_.-]|
|tag|标签，命名规则[A-Za-z0-9_.-]|

### 错误信息：

**Code:** `640`

**Content:** `{ "message" : "List Images Error", "code": "640"}`