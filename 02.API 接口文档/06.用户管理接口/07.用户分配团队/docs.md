---
title: 用户分配团队
taxonomy:
    category: docs
---

- 需要admin权限

### 请求：

    POST /api/users/:username/teams/:teamname

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6005`

**Content:** `{ "message" : "Assign team error", "code": "6005", "description": "error details"}`
