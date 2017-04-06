---
title: 同步LDAP用户
taxonomy:
    category: docs
---

- 需要super admin权限

### 请求：

    GET /api/users/ldap/sync

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `603`

**Content:** `{ "message" : "Sync LDAP error", "code": "603", "description": "error details"}`
