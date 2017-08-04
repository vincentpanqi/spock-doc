---
title: 删除 Secret
taxonomy:
    category: docs
---

### 请求：

    DELETE /api/repos/:owner/:name/secrets/:secretName

### 请求参数:

- owner: Github owner
- name: Github Repo
- secretName: Secret name

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6724`

**Content:** `{ "message" : "Drone Delete Secret Error", "code": "6724", "description": "error details"}`
