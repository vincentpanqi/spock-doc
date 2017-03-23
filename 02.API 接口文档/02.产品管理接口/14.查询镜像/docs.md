---
title: 查询镜像
taxonomy:
    category: docs
---

### 请求：

    GET /api/images/services/:serviceName


### 返回：

**Code:** `200`

**Content:** 

```
[
	{
	"name": "helloworld-go",
	"tag": "demo"
	}
]
```	

### 返回参数说明：

|参数|描述|
|---|---|
|name|服务名称，命名规则[a-z0-9_.-]|
|tag|标签，命名规则[A-Za-z0-9_.-]|

### 错误信息：

**Code:** `640`

**Content:** `{ "message" : "List Images Error", "code": "640"}`