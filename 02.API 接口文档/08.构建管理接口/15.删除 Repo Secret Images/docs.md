---
title: 删除 Repo Secret Images
taxonomy:
    category: docs
---

- 删除用户下面所有 Repos 指定的 Secret Images, 如果找不到对应的 secret 则忽略

### 请求：

    DELETE /api/secrets/:name/images

### 请求参数:

- name: Secret Name

```
{
  "iamges": "index.qiniu.com/spock/docker-client"
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6729`

**Content:** `{ "message" : "Drone Delete Repos Secret Images Error", "code": "6729", "description": "error details"}`
