---
title: 创建产品模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`admin`权限
- 产品模板依赖次序在`groups`里描述
- 产品模板依赖服务组,需要调用`创建服务组模板`预先创建

### 请求:

	POST /api/templates/products

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
  "product_name": "product-X",
  "groups": [
    ["group-A", "group-B"],
	["group-C", "group-D"]
  ],
  "enabled": true
}

```	
### 参数说明:

| 参数 | 描述 |
|-----|------|
| product_name | 产品名称，全局唯一 |
| groups | 产品依赖服务组，服务组按配置的先后顺序启动 |
| enabled | 是否启用模版, 暂时没有使用 |

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "Invalid ProductTemplateArgs", "code": "400", "description": "error details"}`

**Code:** `6100`

**Content:** `{ "message" : "Create Template Error", "code": "6100", "description": "error details"}`

