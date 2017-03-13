---
title: 取消任务
taxonomy:
    category: docs
---

* **URL:**

    `/api/pipeline/tasks/:taskID/cancel`

* **Method:**

    `POST`

* **URL Params:**

	`None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `688`
  	
  	**Content:** `{ "message" : "Cancel Task Error", "code": "688", "description": "error details"}`