---
title: 获取服务组模板
taxonomy:
    category: docs
---


#### 注意事项

- 需要`user`权限

### 请求：

    GET /api/templates/groups/:name

### 返回：

**Code:** `200`

**Content:**

```
{
  "group_name": "mongo-rs",
  "revision": 3,
  "services": [
    [
      "mongo3.2"
    ],
    [
      "mongo-init-job"
    ]
  ]
}
```

### 返回参数说明

详见`创建服务组模版`

### 错误信息:

**Code:** `6103`

**Content:** `{ "message" : "Get Template Error", "code": "6103", "description": "error details"}`


