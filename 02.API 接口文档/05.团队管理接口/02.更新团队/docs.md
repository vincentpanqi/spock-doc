---
title: 创建更新团队
taxonomy:
    category: docs
---

- 需要super admin权限

### 请求：

    PUT /api/teams/:name


### 请求参数：

**Type:** `application/json`

**Content:**

```
{
    "name": "new-CIA",
    "leader": "Jason Bourne",
    "description": "agent"
}
```	

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid Team Args", "code": "400", "description": "error details"}`

**Code:** `608`

**Content:** `{ "message" : "Update Team Error", "code": "608", "description": "error details"}`