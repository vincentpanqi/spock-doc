---
title: 用户剔除团队
taxonomy:
    category: docs
---

- 需要admin权限

### 请求：

    DELETE /api/users/:username/teams/:teamname

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6006`

**Content:** `{ "message" : "Unassign team error", "code": "6006", "description": "error details"}`
