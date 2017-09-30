---
title: 3.2 更新服务配置项
taxonomy:
    category: docs
---

### 请求：

    PUT /api/keystore/:key

### 请求参数：
	
**Type:** `application/json`

**Content:**

```
{
    "namespace": "shared-namespace",
    "value": "value"
}
```

### 参数说明：

|参数|描述|
|---|---|
|namespace|用户名称, 普通用户为自身LDAP用户名, 管理员用户为任意LDAP用户名或者`shared-namespace`|
|value|值|
|shared-namespace|共享参数|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `642`

**Content:** `{ "message" : "update keystore error", "code": "642"}`