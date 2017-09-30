## 扩容服务


### 请求：

    POST /api/products/:productName/groups/:groupName/services/:serviceName/scale/:number

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `633`

**Content:** `{ "message" : "Stop Service Error", "code": "633"}`