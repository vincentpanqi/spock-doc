---
title: 创建更新产品模板
taxonomy:
    category: docs
---

- 需要管理员权限
- 产品模板依赖次序在`stack_deps`里描述
- 产品模板依赖服务组需要调用创建服务组模板预先创建

* **URL:**

    `/api/templates/products`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

    ```
	{
		"product_name": "kodo-single",
		"enabled": true,
        "stack_deps": [["mongo","mysql"],["kodo"]]
	}
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid ProductTemplateArgs", "code": "400", "description": "error details"}`

	**Code:** `610`
  	
  	**Content:** `{ "message" : "Upsert Template Error", "code": "610", "description": "error details"}`