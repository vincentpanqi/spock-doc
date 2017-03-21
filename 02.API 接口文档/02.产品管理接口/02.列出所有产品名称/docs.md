---
title: 列出所有产品名称
taxonomy:
    category: docs
---

* **URL:**

    `/api/products/names`

* **Method:**

    `GET`

* **URL Params:**

	`None`

* **Data Params:**

    `None`

* **返回:**

	**Code:** `200`

    **Content:**

    ```
    [
        "memcached",
        "kodo"
    ]
    ```

* **错误信息:**

	**Code:** `621`
  	
  	**Content:** `{ "message" : "List Product Names Error", "code": "621"}`