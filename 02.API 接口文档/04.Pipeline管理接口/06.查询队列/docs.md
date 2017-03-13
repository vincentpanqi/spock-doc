---
title: 查询队列
taxonomy:
    category: docs
---

* **URL:**

    `/api/pipelines/queue`

* **Method:**

    `GET`

* **URL Params:**

	`None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

	**Content:** 
	
	```
    [
        {
            "id": "58ad03eb8a4b40d217000001",
            "pipeline_name": "pipeline-1",
            "status": 0,
            "task_creator": "yaoshipu",
            "repo_name": "aslan-platform",
            "repo_owner": "yaoshipu",
            "branch": "develop",
            "pull_request_number": 62,
            "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609",
            "created": "2017-02-22T11:22:19.217+08:00"
        },
        {
            "id": "58ad03ec8a4b40d217000002",
            "pipeline_name": "pipeline-1",
            "status": 1,
            "task_creator": "yaoshipu",
            "repo_name": "aslan-platform",
            "repo_owner": "yaoshipu",
            "branch": "develop",
            "pull_request_number": 62,
            "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609",
            "created": "2017-02-22T11:22:20.064+08:00"
        }
    ]
	```	

* **Error Response:**

	**Code:** `684`
  	
  	**Content:** `{ "message" : "List Queue Items Error", "code": "684", "description": "error details"}`
