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

* **返回:**

	**Code:** `200`

* **错误信息:**

	**Code:** `613`
  	
  	**Content:** `{ "message" : "Delete Template Error", "code": "613", "description": "error details"}`