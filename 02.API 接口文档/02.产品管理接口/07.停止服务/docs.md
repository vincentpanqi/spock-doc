---
title: 停止服务接口
taxonomy:
    category: docs
---

## 停止服务
 
* **URL:**

    `/stacks/:stackName/services/:serviceName/stop`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `633`
  	
  	**Content:** `{ "message" : "Stop Service Error", "code": "633"}`