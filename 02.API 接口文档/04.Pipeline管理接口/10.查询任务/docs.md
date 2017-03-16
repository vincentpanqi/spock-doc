---
title: 查询任务
taxonomy:
    category: docs
---

* **URL:**

    `/api/pipeline/tasks/:pipelineName/:taskID`

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
    {
        "id": 22,
        "task_creator": "yaoshipu",
        "pipeline_name": "pipeline-1",
        "status": 0,
        "created": "2017-02-21T22:52:27.443+08:00",
        "updated": "2017-02-21T22:52:27.443+08:00",
        "build_task": {
            "repo_owner": "yaoshipu",
            "repo_name": "aslan-platform",
            "branch": "develop",
            "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609",
            "image_tag": "20170221-22-develop",
            "status": 2,
            "project_id": 356,
            "build_nubmer": 35,
            "jobs": [
            {
                "number": 1,
                "status": "success"
            }
            ]
        },
        "deploy_task": {
            "stack_name": "stack-1",
            "servive_name": "service-1",
            "image_tag": "20170221-22-develop",
            "test_env": "spock",
            "status": 3,
            "error": "update service error: Update Service Error"
        },
        "test_task": {
            "stack_name": "test1",
            "servive_name": "doratest",
            "status": 0
        },
        "distribute_task": {
            "package_file": "service-1-20170221-22-develop.tar.gz",
            "image_name": "service-1",
            "image_tag": "20170221-22-develop",
            "status": 0
        }
    }
	```	

* **Error Response:**

	**Code:** `685`
  	
  	**Content:** `{ "message" : "Get Pipelines Error", "code": "685", "description": "error details"}`