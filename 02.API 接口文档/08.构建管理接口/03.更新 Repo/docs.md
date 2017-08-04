---
title: 更新 Repo
taxonomy:
    category: docs
---

### 请求：

    PUT /api/repos/:owner/:name

### 请求参数:

- 注意所有参数都为可选项

**Type:** `application/json`

**Content:**

```
{
    "trusted": true,
    "allow_pr": true,
    "allow_push": true,
    "allow_deploys": true,
    "allow_tags": true
}
```	

### 返回：

**Code:** `200`

**Content:**

```
{
    "id": 16,
    "owner": "yaoshipu",
    "name": "aone",
    "full_name": "yaoshipu/aone",
    "avatar_url": "https://avatars0.githubusercontent.com/u/13618151?v=4",
    "link_url": "https://github.com/yaoshipu/aone",
    "scm": "git",
    "clone_url": "https://github.com/yaoshipu/aone.git",
    "default_branch": "develop",
    "timeout": 60,
    "visibility": "private",
    "private": true,
    "trusted": true,
    "gated": false,
    "allow_pr": true,
    "allow_push": true,
    "allow_deploys": true,
    "allow_tags": true,
    "config_file": ".drone.yml"
}
```

### 错误信息：

**Code:** `6713`

**Content:** `{ "message" : "Drone Update Repo Error", "code": "6713", "description": "error details"}`
