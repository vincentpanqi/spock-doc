---
title: 列出运行中任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/running

    GET /api/tasks/running/realtime [websocket 接口]

    GET /api/v2/tasks/running

    GET /api/v2/tasks/ws/running [websocket 接口]

### 返回：

**Code:** `200`

**Content:** 

```
V1

[
  {
    "id": 39,
    "task_creator": "yaoshipu",
    "task_revoker": "",
    "pipeline_name": "demo-pipeline",
    "jira_issues": [
      {
        "id": "71810",
        "key": "ASLAN-1441",
        "url": "https://jira.qiniu.io/browse/ASLAN-1441",
        "summary": "pipeline task",
        "description": "pipeline task",
        "priority": "p3",
        "creator": "fulichao",
        "assignee": "fulichao",
        "reporter": "fulichao"
      }
    ],
    "current_status": "running",
    "final_status": "running",
    "created": 1499742178,
    "updated": 1499742178,
    "deploy_env": "yaoshipu",
    "stack_name": "demo",
    "service_name": "demo",
    "build_task": {
      "repo_owner": "yaoshipu",
      "repo_name": "sample-helloworld",
      "branch": "master",
      "ref": "refs/pull/1/head",
      "commit_id": "0c4f2154374accbbdf8e165a4a93209fc972976d",
      "commit_message": "Test",
      "image_tag": "20170711-v39-master",
      "status": "running",
      "project_id": 0,
      "build_nubmer": 0,
      "jobs": []
    },
    "test_task": {
        "stack_name": "test",
        "service_name": "test",
        "threshold": 0,
        "kodo_key": "",
        "kodo_hash": "",
        "status": "created",
        "error": ""
    },
    "deploy_task": {
      "image_tag": "20170711-v39-master",
      "status": "created",
      "error": ""
    },
    "distribute_task": {
      "package_file": "-20170711-v39-master.tar.gz",
      "image_name": "",
      "image_tag": "20170711-v39-master",
      "status": "created"
    }
  }
]
```

```
V2

[
  {
    "task_id": 1,
    "pipeline_name": "test-pipeline",
    "status": "running",
    "task_creator": "yaoshipu",
    "create_time": 1507107936,
    "start_time": 1507107939,
    "end_time": 1507107936,
    "sub_tasks": [
      {
        "branch": "master",
        "commit_id": "e96fb0b53ff1895354c1b1276e4536a6a7b1bd74",
        "commit_message": "test drone yml update",
        "image": "image full name",
        "package_file": "build service kodo package file",
        "pull_request_id": 6,
        "repo_name": "sample-helloworld",
        "repo_owner": "yaoshipu",
        "timeout": 3600,
        "type": "build"
      }
    ]
  }
]
```

### 错误信息：

**Code:** `6808`

**Content:** `{ "message" : "List Running Tasks Error", "code": "6808", "description": "error details"}`