---
title: 添加 Repo Secret Images
taxonomy:
    category: docs
---

- 添加用户下面所有 Repos 的 Secret Images, 如果找不到对应的 secret 则忽略

### 请求：

    PUT /api/secrets/:name/images

### 请求参数:

- name: Secret Name

```
{
  "images": ["index.qiniu.com/spock/docker-client", "index.qiniu.com/spock/golang:1.7"]
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6728`

**Content:** `{ "message" : "Drone Upsert Repos Secret Images Error", "code": "6728", "description": "error details"}`
