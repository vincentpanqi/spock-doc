---
title: 列出服务配置项
taxonomy:
    category: docs
---

#### 注意事项

- 普通用户只能列出自身服务配置项
- 管理员用户可以列出全部服务配置项

### 请求：

    GET /api/keystore

### 返回：

**Code:** `200`

**Content:**

```
[
  {
    "namespace": "zhangdahe",
    "key": "ak",
    "value": "akvalue",
    "create_time": 1505045090,
    "update_time": 1505045090,
    "update_by": "zhangdahe"
  }
]
```

### 错误信息：

**Code:** `641`

**Content:** `{ "message" : "list keystore error", "code": "641"}`