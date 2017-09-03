---
title: 列出服务组模板
taxonomy:
    category: docs
---
 
#### 注意事项

- 需要`user`权限

### 请求：

    GET /api/templates/groups

### 返回:

**Code:** `200`

**Content:** 

```
[
  {
    "group_name": "group-A",
    "create_time": 1504422408,
    "update_time": 1504422466,
    "update_by": "yaoshipu",
    "services": [
      [
        "service-1",
        "service-2"
      ],
      [
        "service-3"
      ]
    ]
  },
  {
    "group_name": "group-B",
    "create_time": 1504429474,
    "update_time": 1504429474,
    "update_by": "yaoshipu",
    "services": [
      [
        "service-1",
        "service-2"
      ],
      [
        "service-3"
      ]
    ]
  }
]
```	

### 返回参数说明

详见`创建服务组模版`

### 错误信息:

**Code:** `6102`

**Content:** `{ "message" : "List Template Error", "code": "6102", "description": "error details"}`
