---
title: 用户分配角色
taxonomy:
    category: docs
---

- 需要super admin权限

### 请求：

    POST /api/users/:username/roles/:rolename

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6007`

**Content:** `{ "message" : "Assign role error", "code": "6007", "description": "error details"}`
