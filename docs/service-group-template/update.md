## 更新服务组模板


#### 注意事项

- 需要`admin`权限
- 服务组模板依赖次序在`serviecs`里描述
- 服务组模板依赖服务,需要调用`创建服务模板`预先创建

### 请求:

  PUT /api/templates/groups/:name

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
  "group_name": "group-A",
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
```
### 参数说明

详见`创建服务组模版`

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "Invalid GroupTemplateArgs", "code": "400", "description": "error details"}`

**Code:** `6101`

**Content:** `{ "message" : "Upsert Template Error", "code": "6101", "description": "error details"}`

