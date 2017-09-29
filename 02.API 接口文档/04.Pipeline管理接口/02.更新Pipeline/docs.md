---
title: 4.2 更新 Pipeline
taxonomy:
    category: docs
---

### 注意事项

- 需要admin权限
- pipeline名字不能修改

### 请求：

    PUT /api/pipelines/:name
    PUT /api/v2/pipelines/:name

### 请求参数：

**Type:** `application/json`

**Content:**

```
Pipeline V1

{
    "pipeline_name": "pipeline-1",
    "stack_name": "stack-1",
    "service_name": "service-1",
    "test_stack": "test",
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
    "enabled": true
}
```	

```
Pipeline V2	

{
  "description": "demo desc",
  "enabled": true,
  "schedule": "*/10 * * * * *",
  "sub_tasks": [
    {
      "type": "build",
      "repo_owner": "qbox",
      "repo_name": "aslan-platform",
      "branch": "dev",
      "pull_request_id": 1234,
      "commit_id": "456",
      "commit_message": "commit message",
      "image": "image full name",
      "package_file": "build service kodo package file",
      "timeout": 7200
    },
    {
      "type": "deploy",
      "product_name": "spock-kube",
      "group_name": "spock-kube",
      "service_name": "spock-backend",
      "container_name": "spock-backend",
      "image": "same as previous build task value",
      "package_file": "same as previous build task value",
      "timeout": 500
    },
    {
      "type": "testing",
      "product_name": "spock-kube",
      "group_name": "spock-test",
      "service_name": "spock-backend-test",
      "container_name": "spock-backend-test",
      "threshold": 90,
      "command": "command to run test",
      "result_path": "test result path",
      "timeout": 3600
    },
    {
      "type": "distribute",
      "dist_host": "jumpbox",
      "timeout": 600
    },
    {
      "type": "jira",
      "timeout": 600
    }
  ]
}
```

### 请求参数说明：

详见“创建Pipeline”

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "invalid pipeline args", "code": "400", "description": "error details"}`

**Code:** `6801`
  	
**Content:** `{ "message" : "update pipeline error", "code": "6801", "description": "error details"}`

