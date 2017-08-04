---
title: 删除 Repo Secret
taxonomy:
    category: docs
---

- 删除用户下面所有 Repos Secret, 如果找不到对应的 secret 则忽略

### 请求：

    GET /api/secrets/:name

### 请求参数:

- name: Secret name

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6727`

**Content:** `{ "message" : "Drone Delete Repos Secret Error", "code": "6727", "description": "error details"}`
