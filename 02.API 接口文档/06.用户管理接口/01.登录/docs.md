---
title: 登录
taxonomy:
    category: docs
---

### 请求：

   POST /api/user/signin

### 请求参数：

**Type:** `application/x-www-form-urlencoded`

**Content:**

```
username=yaoshipu&password=Qiniu%40999
```	

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Bad Request", "code": "400", "description": "error details"}`

**Code:** `401`

**Content:** `{ "message" : "Unauthorized", "code": "401", "description": "error details"}`

**Code:** `403`

**Content:** `{ "message" : "Forbidden", "code": "403", "description": "error details"}`