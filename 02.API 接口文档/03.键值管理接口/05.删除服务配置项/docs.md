---
title: 删除服务配置项
taxonomy:
    category: docs
---


#### 注意事项

- 此接口用于删除用户的配置

### 请求：

    DELETE /api/keystore/key

### 请求参数：
	
**Type:** `application/json`

**Content:**

```
{
    "vars": [ "ka", "kb"]
}

```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `644`

**Content:** `{ "message" : "Delete Config Service Specs Error", "code": "644"}`