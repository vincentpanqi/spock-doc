---
title: 列出运行中任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/running

    GET /api/tasks/running/realtime [websocket 接口]

### 返回：

**Code:** `200`

**Content:** 

```
[
  {
    "id": 39,
    "task_creator": "yaoshipu",
    "task_revoker": "",
    "pipeline_name": "demo-pipeline",
    "jira_summaries": ["Test1"],
    "current_status": "running",
    "final_status": "running",
    "created": 1499742178,
    "updated": 1499742178,
    "deploy_env": "yaoshipu",
    "stack_name": "demo",
    "service_name": "demo",
    "test_stack": "demo",
    "test_service": "demo",
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
    "deploy_task": {
      "image_tag": "20170711-v39-master",
      "status": "created"
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

### 错误信息：

**Code:** `6808`

**Content:** `{ "message" : "List Running Tasks Error", "code": "6808", "description": "error details"}`