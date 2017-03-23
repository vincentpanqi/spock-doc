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
"vars":
{
    "ka": "va-spockadmin",
    "kb": "vb-spockadmin"
}
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `643`

**Content:** `{ "message" : "Create Config Service Specs Error", "code": "643"}`