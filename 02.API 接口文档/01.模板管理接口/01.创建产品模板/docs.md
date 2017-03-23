---
title: 创建产品模板
taxonomy:
    category: docs
---

#### 注意事项
- 需要管理员权限
- 产品模板依赖次序在`stack_deps`里描述
- 产品模板依赖服务组需要调用创建服务组模板预先创建

### **请求:**

	POST /api/templates/products

### **请求参数:**

**Type:** `application/json`

**Content:**

```
{
	"product_name": "kodo-single",
	"enabled": true,
	"stack_deps": [["mongo","mysql"],["kodo"]]
}
```	
### **模版参数:**

|  参数      |   描述                     |
|------------|----------------------------|
|product_name|产品名称，全局唯一             |
|enabled     |是否对外启用模版               |
|stack_deps  |产品依赖服务组，服务组按配置的先后顺序启动|

### **返回:**

**Code:** `200`

### **错误信息:**

**Code:** `400`

**Content:** `{ "message" : "Invalid ProductTemplateArgs", "code": "400", "description": "error details"}`

**Code:** `610`

**Content:** `{ "message" : "Create Template Error", "code": "610", "description": "error details"}`

