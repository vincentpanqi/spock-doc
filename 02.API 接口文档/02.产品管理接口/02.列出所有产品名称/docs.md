---
title: 列出所有产品名称
taxonomy:
    category: docs
---

### 请求：

    GET /api/products/names


### 返回：

**Code:** `200`

**Content:**

```
[
    "memcached",
    "kodo"
]
```

### 错误信息:

**Code:** `621`

**Content:** `{ "message" : "List Product Names Error", "code": "621"}`