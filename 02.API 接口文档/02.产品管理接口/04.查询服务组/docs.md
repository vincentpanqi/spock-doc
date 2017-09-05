---
title: 列出所有产品信息
taxonomy:
    category: docs
---

### 请求：

    GET /api/products/:productName/groups/:groupName

### 返回：

**Code:** `200`

**Content:**

```
[
  {
    "name": "portal-v4-certificate-3015503407",
    "desired": 1,
    "current": 1,
    "ready": 1,
    "age": "5d",
    "containers": "certificate",
    "images": "index-dev.qiniu.io/spock/certificate:latest",
    "selector": "pod-template-hash=3015503407,product=portal-v4,service=certificate,svc-group=portal-v4"
  }
]
```

### 参数说明:

- `name` 服务副本名称
- `desired` 期望副本数量
- `current` 实际运行数量
- `ready` 
- `age` 运行时长
- `images` 镜像名称
- `selector` 查询条件

### 错误信息:

**Code:** `622`

**Content:** `{ "message" : "List Products Error", "code": "622"}`