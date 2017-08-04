---
title: 更新 Repo Secret Value
taxonomy:
    category: docs
---

- 更新用户下面所有 Repos 指定 Secret 的值, 如果找不到对应的 secret 则忽略

### 请求：

    PUT /api/secrets/:name

### 请求参数:

- name: Secret Name

```
{
  "value": "secret-value"
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6726`

**Content:** `{ "message" : "Drone Update Repos Secret Value Error", "code": "6726", "description": "error details"}`
