---
title: 创建任务
taxonomy:
    category: docs
---

### 请求：

    POST /api/tasks


### 请求参数：

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

### 请求参数说明：

详见“查询队列”

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid Pipeline Args", "code": "400", "description": "error details"}`

**Code:** `6901`

**Content:** `{ "message" : "Enqueue Task Error", "code": "6901", "description": "error details"}`