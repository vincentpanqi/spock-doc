---
title: 查询服务Pod
taxonomy:
    category: docs
---

### 请求：

    POST /api/pods/:podName


### 请求参数：

**Type:** `application/json`

**Content:**

```
返回 kubectl describe po portal-v4-index-2615846670-x9xz0 -n default 具体内容，直接是string
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid GetServicePod Args", "code": "400"}`

**Code:** `638`

**Content:** `{ "message" : "get service pod error", "code": "638"}`