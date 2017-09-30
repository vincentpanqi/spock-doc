## 列出服务模板名称


#### 注意事项

- 需要`user`权限

### 请求:

    GET /api/templates/services

### 返回:

**Code:** `200`

**Content:**

```
[
  "service-1",
  "service-2",
  "service-3",
  "service-4"
]
```

### 错误信息:

**Code:** `6102`

**Content:** `{ "message" : "Get Template Error", "code": "6102", "description": "error details"}`
