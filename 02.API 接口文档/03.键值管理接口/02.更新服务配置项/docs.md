---
title: 更新服务配置项
taxonomy:
    category: docs
---

* **URL:**

    `/api/configs`

* **Method:**

    `PUT`

* **URL Params:**

    `None`

* **Data Params:**
	
	**Type:** `application/json`
	
	**Content:**

	```
  {
    "vars":
    {
      "ka": "va-updated",
      "kb": "vb-updated"
    }
  }
  ```

* **返回:**

    **Code:** `200`

* **错误信息:**

    **Code:** `642`
  	
  	**Content:** `{ "message" : "Update Config Service Specs Error", "code": "642"}`