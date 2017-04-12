---
title: 用户剔除角色
taxonomy:
    category: docs
---

- 需要super admin权限

### 请求：

    DELETE /api/users/:username/roles/:rolename

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6008`

**Content:** `{ "message" : "Unassign role error", "code": "6008", "description": "error details"}`
