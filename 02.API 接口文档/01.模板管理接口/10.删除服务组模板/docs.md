---
title: 删除服务组模板
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/templates/stacks`

* **Method:**

    `DELETE`

* **URL Params:**

    `None`

* **Data Params:**

    **Type:** `application/json`
	
	**Content:**

    ```
	{
		"stack_names": ["stack-2", "stack-3"]
	}
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `614`
  	
  	**Content:** `{ "message" : "Delete Template Error", "code": "614", "description": "error details"}`