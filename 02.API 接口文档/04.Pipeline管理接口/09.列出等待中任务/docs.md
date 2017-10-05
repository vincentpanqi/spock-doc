---
title: 列出等待中任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/v2/tasks/pending

    GET /api/v2/tasks/ws/pending [websocket 接口]

### 返回：

**Code:** `200`

**Content:** 

```
V2

[
  {
    "task_id": 1,
    "pipeline_name": "test-pipeline",
    "status": "waiting",
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