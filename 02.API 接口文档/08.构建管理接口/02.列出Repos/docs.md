---
title: 列出 Repos
taxonomy:
    category: docs
---

### 请求：

    GET /api/repos

### 返回：

**Code:** `200`

**Content:**

```
[
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
]
```	

### 错误信息：

**Code:** `6711`

**Content:** `{ "message" : "Drone List Repos Error", "code": "6711", "description": "error details"}`
