---
title: 创建Pipeline
taxonomy:
    category: docs
---

* **URL:**

    `/api/pipelines`

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
        "stack_name": "stack-1",
        "servive_name": "service-1",
        "test_stack": "test",
        "test_service": "doratest",
        "deploy_env": "spock",
        "repo_owner": "yaoshipu",
        "repo_name": "aslan-platform",
        "run_build": true,
        "run_deploy": true,
        "run_test": true,
        "run_distribute": true,
        "enabled": true
    }
	```	

* **返回:**

	**Code:** `200`

* **错误信息:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid Pipeline Args", "code": "400", "description": "error details"}`

	**Code:** `680`
  	
  	**Content:** `{ "message" : "Upsert Pipeline Error", "code": "680", "description": "error details"}`