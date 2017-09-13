---
title: 查询产品模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`user`权限

### 请求:

    GET /api/templates/products/:name

### 返回:

**Code:** `200`

**Content:**

```
{
  "product_name": "portal-v4",
  "groups": [
    {
      "group_name": "portal-v4",
      "create_time": 1504670402,
      "update_time": 1504689324,
      "update_by": "yaoshipu",
      "services": [
        [
          "certificate",
          "fe-financial",
          "fusion",
          "index",
          "jedi",
          "kirk",
          "kodo",
          "kylin",
          "pili",
          "vance"
        ]
      ]
    }
  ],
  "create_time": 1504683822,
  "update_time": 1504683822,
  "update_by": "yaoshipu",
  "enabled": true
}
```
### 参数说明:

详见`创建产品模版`

### 错误信息:

**Code:** `6103`

**Content:** `{ "message" : "Get Template Error", "code": "6103", "description": "error details"}`
