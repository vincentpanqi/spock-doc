---
title: 4.4 查询 Pipeline
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipelines/:name
    GET /api/v2/pipelines/:name

### 返回：

**Code:** `200`

**Content:** 

```
Pipeline V1

{
    "pipeline_name": "pipeline-1",
    "creator": "yaoshipu",
    "stack_name": "stack-1",
    "service_name": "service-1",
    "test_stack": "test1",
    "test_service": "doratest",
    "test_threshold": 0,
    "deploy_env": "spock",
    "repo_owner": "yaoshipu",
    "repo_name": "aslan-platform",
    "run_build": true,
    "run_deploy": true,
    "run_deploy_cs": false,
    "run_test": true,
    "run_distribute": true,
    "updated": 1490080434,
    "enabled": true
}
```

```
Pipeline V2

{
  "name": "test-pipeline",
  "description": "demo desc",
  "update_by": "yaoshipu",
  "update_time": 1506652697,
  "enabled": true,
  "schedule": "*/10 * * * * *",
  "sub_tasks": [
    {
      "branch": "dev",
      "commit_id": "456",
      "commit_message": "commit message",
      "image": "image full name",
      "package_file": "build service kodo package file",
      "pull_request_id": 1234,
      "repo_name": "aslan-platform",
      "repo_owner": "qbox",
      "timeout": 7200,
      "type": "build"
    },
    {
      "container_name": "spock-backend",
      "group_name": "spock-kube",
      "image": "same as previous build task value",
      "package_file": "same as previous build task value",
      "product_name": "spock-kube",
      "service_name": "spock-backend",
      "timeout": 500,
      "type": "deploy"
    },
    {
      "command": "command to run test",
      "container_name": "spock-backend-test",
      "group_name": "spock-test",
      "product_name": "spock-kube",
      "result_path": "test result path",
      "service_name": "spock-backend-test",
      "threshold": 90,
      "timeout": 3600,
      "type": "testing"
    },
    {
      "dist_host": "jumpbox",
      "timeout": 600,
      "type": "distribute"
    },
    {
      "timeout": 600,
      "type": "jira"
    }
  ]
}
```	

### 错误信息：

**Code:** `6803`

**Content:** `{ "message" : "get pipeline error", "code": "6803", "description": "error details"}`
