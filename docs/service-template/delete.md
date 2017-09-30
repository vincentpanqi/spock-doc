##  删除服务模板


#### 注意事项

- 需要`admin`权限
- 删除服务以及其全部版本

### 请求：

    DELETE /api/templates/services/:name

### 返回:

**Code:** `200`

### 错误信息:**

**Code:** `6104`

**Content:** `{ "message" : "Delete Template Error", "code": "6104", "description": "error details"}`