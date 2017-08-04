---
title: 创建 Repos Secret
taxonomy:
    category: docs
---

### 请求：

    POST /api/secrets

### 请求参数:

```
{
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
- event: 可选择的event为 pull_request, push, tag, deployment. 默认选择为 pull_request  
- image: 授权注入secrets的镜像名称

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6725`

**Content:** `{ "message" : "Drone Upsert Repos Secret Error", "code": "6725", "description": "error details"}`
