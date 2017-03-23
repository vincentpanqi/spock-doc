---
title: 创建服务配置项
taxonomy:
    category: docs
---

### 请求：

    POST /api/configs


### 请求参数：
	
**Type:** `application/json`

**Content:**

```
{
    "namespace": "qiniu", 
    "vars": {
        "ka": "va-spockadmin", 
        "kb": "vb-spockadmin"
    }
}
```

### 请求参数说明：

|参数|描述|
|---|---|
|namespace|命名空间，暂时只能为qiniu，后端代码里写死|
|vars|键值对|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `643`

**Content:** `{ "message" : "Create Config Service Specs Error", "code": "643"}`