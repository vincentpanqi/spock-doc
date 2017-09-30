## 列出服务组模板

 
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
    "group_name": "mongo-rs",
    "revision": 3,
    "create_time": 1505790878,
    "update_time": 1505803134,
    "update_by": "yaoshipu",
    "services": [
      [
        "mongo3.2"
      ],
      [
        "mongo-init-job"
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
