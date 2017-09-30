---
title: 3.4 删除服务配置项
taxonomy:
    category: docs
---

#### 注意事项

- 此接口用于删除用户的配置

### 请求：

    DELETE /api/keystore/:key?namespace=:namespace

### 请求参数：
	
**Type:** `application/json`

### 参数说明：

|参数|描述|
|---|---|
|namespace|用户名称, 普通用户为自身LDAP用户名, 管理员用户为任意LDAP用户名或者`shared-namespace`|
|key|需要删除的键|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `644`

**Content:** `{ "message" : "Delete Config Service Specs Error", "code": "644"}`