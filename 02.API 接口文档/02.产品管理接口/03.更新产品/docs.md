---
title: 更新产品
taxonomy:
    category: docs
---
 
#### 注意事项

- 需要`user`权限
- 产品模板依赖次序在`groups`里描述, `groups` 外层数组为顺序执行，内层数组为并行执行
- 产品模板依赖服务组,需要调用`创建服务组模板`预先创建

### 请求：

    POST /api/products/:productName

### 请求参数说明：

|参数|说明|
|---|---|
|product_name|产品名称，全局唯一|

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "invalid ProductArgs", "code": "400"}`

**Content:** `{ "message" : "invalid ProductName or Groups", "code": "400"}`

**Code:** `623`

**Content:** `{ "message" : "Create Product Error", "code": "623"}`