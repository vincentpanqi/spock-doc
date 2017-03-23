---
title: 更新服务配置项
taxonomy:
    category: docs
---

### 请求：

    `/api/configs`

* **Method:**

    `PUT`

* **URL Params:**

    `None`

### 请求参数：
	
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

### 返回：

    **Code:** `200`

### 错误信息：

    **Code:** `642`
  	
  	**Content:** `{ "message" : "Update Config Service Specs Error", "code": "642"}`