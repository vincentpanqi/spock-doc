---
title: 查询定时任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/cron/jobs/:pipelineName

### 返回：

**Code:** `200`

**Content:** 

```
[
    {
        "id": "58e469558a4b401572000001",
        "schedule": "@every 5s",
        "pipeline_name": "demo-pipeline",
        "repo_name": "sample-helloworld",
        "repo_owner": "yaoshipu",
        "branch": "develop",
        "updated": 1491038931,
        "enabled": true,
        "creator": "yaoshipu"
    }
]
```	

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid PipelineJob Args", "code": "400", "description": "error details"}`

**Code:** `696`

**Content:** `{ "message" : "Get Pipeline Job Error", "code": "696", "description": "error details"}`