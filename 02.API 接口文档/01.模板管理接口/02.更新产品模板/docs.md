---
title: 更新产品模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`admin`权限
- 产品模板依赖次序在`groups`里描述
- 产品模板依赖服务组,需要调用`创建服务组模板`预先创建

### 请求:

    PUT /api/templates/products/:name

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
  "product_name": "product-X",
  "groups": [
    "group-C", "group-D"
  ],
  "enabled": true
}
```	
### 参数说明:

详见`创建产品模版`

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "Invalid ProductTemplateArgs", "code": "400", "description": "error details"}`

**Code:** `6101`

**Content**: `{ "message" : "Update Template Error", "code": "6101", "description": "error details"}`