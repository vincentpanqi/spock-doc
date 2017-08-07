---
title: 更新 Secret
taxonomy:
    category: docs
---

### 请求：

    PUT /api/repos/:owner/:name/secrets

### 请求参数:

- owner: Github owner
- name: Github Repo

```
{
  "name": "test-secret",
  "value": "test-pwd",
  "image": [
    "index.qiniu.com/spock/docker-client",
    "index.qiniu.com/spock/golang:1.7"
  ]
}
```

- event: 可选择的event为 pull_request, push, tag, deployment. 默认选择为 pull_request
- image: 授权注入secrets的镜像名称

### 返回：

**Code:** `200`

**Content:**

```
{
  "id": 22,
  "name": "test-secret",
  "value": "test-pwd",
  "image": [
    "index.qiniu.com/spock/docker-client",
    "index.qiniu.com/spock/golang:1.7"
  ],
  "event": [
    "pull_request"
  ]
}
```	

### 错误信息：

**Code:** `6723`

**Content:** `{ "message" : "Drone Update Secret Error", "code": "6723", "description": "error details"}`
