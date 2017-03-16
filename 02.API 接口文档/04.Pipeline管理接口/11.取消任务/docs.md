---
title: 取消任务
taxonomy:
    category: docs
---

* **URL:**

    `/api/tasks/cancel/id/:id/pipeline/:name`

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