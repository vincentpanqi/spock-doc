---
title: 创建服务配置项
taxonomy:
    category: docs
---

### 请求：

    POST /api/keystore

### 请求参数：
	
**Type:** `application/json`

**Content:**

```
{
    "namespace": "shared-namespace",
    "key": "ak",
    "value": "value"
}
```

### 参数说明：

|参数|描述|
|---|---|
|namespace|用户名称, 普通用户为自身LDAP用户名, 管理员用户为任意LDAP用户名或者`shared-namespace`|
|key|键|
|value|值|
|shared-namespace|共享参数|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `643`

**Content:** `{ "message" : "create keystore error", "code": "643"}`