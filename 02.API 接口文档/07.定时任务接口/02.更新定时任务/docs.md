---
title: 更新定时任务
taxonomy:
    category: docs
---

### 请求：

    POST /api/cron/jobs/:jobName

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
    "pipeline_name": "demo-pipeline",
    "job_name": "demo-job",
    "repo_owner": "yaoshipu",
    "repo_name": "sample-helloworld",
    "branch": "develop",
    "schedule": "@every 15s",
    "enabled": true
}
```	

### 请求参数说明：

|参数|描述|
|---|---|
|pipeline_name|工作流名称|
|job_name|更新的服务所在的服务组|
|repo_owner|代码库的owner|
|repo_name|代码库的名称|
|branch|代码库的分支|
|schedule|cron format|
|enabled|是否启用定时任务|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid PipelineJob Args", "code": "400", "description": "error details"}`

**Code:** `695`

**Content:** `{ "message" : "Update Pipeline Job Error", "code": "695", "description": "error details"}`