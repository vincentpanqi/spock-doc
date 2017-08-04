---
title: 查询 Secret
taxonomy:
    category: docs
---

### 请求：

    GET /api/repos/:owner/:name/secrets/:secretName

### 请求参数:

- owner: Github owner
- name: Github Repo
- secretName: Secret name

### 返回：

**Code:** `200`

**Content:**

```
{
  "id": 51,
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
```	

### 错误信息：

**Code:** `6720`

**Content:** `{ "message" : "Drone Get Secret Error", "code": "6720", "description": "error details"}`
