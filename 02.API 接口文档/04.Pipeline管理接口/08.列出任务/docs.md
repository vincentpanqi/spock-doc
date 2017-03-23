---
title: 列出任务
taxonomy:
    category: docs
---

### 请求：

    `/api/tasks/history`

* **Method:**

    `GET`

* **URL Params:**

	`None`

### 请求参数：

    `None`

### 返回：

	**Code:** `200`

	**Content:** 
	
	```
    [
        {
            "id": 22,
            "task_creator": "yaoshipu",
            "pipeline_name": "pipeline-1",
            "status": 1,
            "created": "2017-02-21T22:52:27.443+08:00",
            "updated": "2017-02-21T22:52:27.443+08:00",
            "build_task": {
                "repo_owner": "yaoshipu",
                "repo_name": "aslan-platform",
                "branch": "develop",
                "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609",
                "image_tag": "20170221-22-develop",
                "status": 0,
                "project_id": 0,
                "build_nubmer": 0,
                "jobs": []
            },
            "deploy_task": {
                "stack_name": "stack-1",
                "servive_name": "service-1",
                "image_tag": "20170221-22-develop",
                "test_env": "spock",
                "status": 0
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
    ]
	```	

### 错误信息：

	**Code:** `686`
  	
  	**Content:** `{ "message" : "List Tasks Error", "code": "686"}`