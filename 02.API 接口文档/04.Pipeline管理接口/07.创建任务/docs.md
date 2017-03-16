---
title: 创建任务
taxonomy:
    category: docs
---

* **URL:**

    `/api/tasks`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

    ```
    {
        "pipeline_name": "pipeline-1",
        "task_creator": "yaoshipu",
        "repo_name": "aslan-platform",
        "repo_owner": "yaoshipu",
        "branch": "develop",
        "pull_request_number": 62,
        "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609"
    }
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid Pipeline Args", "code": "400", "description": "error details"}`

	**Code:** `689`
  	
  	**Content:** `{ "message" : "Enqueue Task Error", "code": "689", "description": "error details"}`