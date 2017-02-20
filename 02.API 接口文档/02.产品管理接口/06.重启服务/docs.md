---
title: 重启服务接口
taxonomy:
    category: docs
---

## 重启服务
 
* **URL:**

    `/stacks/:stackName/services/:serviceName/restart`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `632`
  	
  	**Content:** `{ "message" : "Restart Service Error", "code": "632"}`