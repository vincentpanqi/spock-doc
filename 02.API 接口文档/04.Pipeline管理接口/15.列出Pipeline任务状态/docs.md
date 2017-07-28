---
title: 列出Pipeline任务状态
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipeline/task/status

### 注意事项

- 全部任务状态 [created, running, passed, failed, timeout, cancelled]

### 返回：

**Code:** `200`

**Content:** 

```
{
  "demo-pipeline": {
    "lastest_task": {
      "id": 51,
      "task_creator": "yaoshipu",
      "pipeline_name": "demo-pipeline",
      "status": "created",
      "created": 1491570527,
      "started": 1491570527,
      "updated": 1491570527
    },
    "last_task_success": null,
    "last_task_failure": {
      "id": 50,
      "task_creator": "yaoshipu",
      "pipeline_name": "demo-pipeline",
      "status": "failed",
      "created": 1491570517,
      "started": 1491570517,
      "updated": 1491571517
    }
  },
  "doratest_pipeline": {
    "lastest_task": null,
    "last_task_success": null,
    "last_task_failure": null
  }
}
```	

### 错误信息：

**Code:** `6811`

**Content:** `{ "message" : "List Pipelines Task Status Erro", "code": "6811", "description": "error details"}`
