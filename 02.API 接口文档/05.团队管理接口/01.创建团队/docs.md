---
title: 创建更新团队
taxonomy:
    category: docs
---

- 需要super admin权限

### 请求：

    POST /api/teams


### 请求参数：

**Type:** `application/json`

**Content:**

```
{
    "name": "CIA",
    "leader": "Jason Bourne",
    "description": "agent"
}
```	

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid Team Args", "code": "400", "description": "error details"}`

**Code:** `6009`

**Content:** `{ "message" : "Create Team Error", "code": "6009", "description": "error details"}`
