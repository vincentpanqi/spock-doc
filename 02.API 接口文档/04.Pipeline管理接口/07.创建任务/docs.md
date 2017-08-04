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
    "repo_name": "aslan-platform",
    "repo_owner": "yaoshipu",
    "branch": "develop",
    "pull_request_number": 62,
    "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609"
}
```	

|key|value|
|---|---|
|pipeline_name|工作流名称|
|repo_name|代码库名称|
|repo_owner|代码库所有人|
|branch|代码编译分支 如果提供了pull_request_number, branch会被忽略|
|pull_request_number|pull request number|
|commit_id|commitID 如果是提交PR, 则需要提供|

### 请求参数说明：

详见“查询队列”

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid Pipeline Args", "code": "400", "description": "error details"}`

**Code:** `6901`

**Content:** `{ "message" : "Enqueue Task Error", "code": "6901", "description": "error details"}`