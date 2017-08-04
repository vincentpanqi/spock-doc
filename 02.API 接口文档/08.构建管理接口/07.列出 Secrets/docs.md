---
title: 列出 Secrets
taxonomy:
    category: docs
---

### 请求：

  GET /api/repos/:owner/:name/secrets

### 请求参数:

- owner: Github owner
- name: Github Repo

### 返回：

**Code:** `200`

**Content:**

```
[
  {
    "id": 50,
    "name": "test-secret",
    "image": [
      "index.qiniu.com/spock/docker-client",
      "index.qiniu.com/spock/golang:1.7"
    ],
    "event": [
      "pull_request",
      "push"
    ]
  }
]
```	

### 错误信息：

**Code:** `6721`

**Content:** `{ "message" : "Drone List Secrets Error", "code": "6721", "description": "error details"}`
