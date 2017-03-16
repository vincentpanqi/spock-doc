---
title: 列出运行中任务
taxonomy:
    category: docs
---

* **URL:**

    `/api/tasks/running`

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
            "pipeline_name": "pipeline-1",
            "creator": "yaoshipu",
            "stack_name": "stack-1",
            "servive_name": "service-1",
            "test_stack": "test",
            "test_service": "doratest",
            "test_env": "spock",
            "repo_owner": "yaoshipu",
            "repo_name": "aslan-platform",
            "run_build": true,
            "run_deploy": true,
            "run_test": true,
            "run_distribute": true,
            "updated": "2017-02-21T15:29:16.477+08:00",
            "enabled": true
        }
    ]
	```	

* **Error Response:**

	**Code:** `681`
  	
  	**Content:** `{ "message" : "Get Running Tasks Error", "code": "681", "description": "error details"}`