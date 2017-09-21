---
title: 查询服务组
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
    "service_name": "mongo-init-job",
    "pods": []
  },
  {
    "service_name": "mongo3.2",
    "pods": [
      {
        "name": "mongo-0",
        "ready": "1/1",
        "status": "Running",
        "restarts": 0,
        "age": "23h",
        "ip": "172.20.177.132",
        "node": "cs58"
      },
      {
        "name": "mongo-1",
        "ready": "1/1",
        "status": "Running",
        "restarts": 1,
        "age": "23h",
        "ip": "172.20.229.185",
        "node": "cs23"
      },
      {
        "name": "mongo-2",
        "ready": "1/1",
        "status": "Running",
        "restarts": 0,
        "age": "23h",
        "ip": "172.20.66.161",
        "node": "cs24"
      }
    ]
  }
]
```

### 参数说明:

- `name` 服务副本名称
- `ready` 期望副本数量/实际运行数量
- `age` 运行时长
- `images` 镜像名称

### 错误信息:

**Code:** `622`

**Content:** `{ "message" : "list product group error", "code": "622"}`