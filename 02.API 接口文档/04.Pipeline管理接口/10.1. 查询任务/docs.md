---
title: 查询任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/id/:id/pipeline/:name

### 请求参数说明：

- id：任务的ID
- name: pipeline 名称

### 返回：

**Code:** `200`

**Content:** 

```
{
    "id": 22,
    "task_creator": "yaoshipu",
    "task_revoker": "spock",
    "pipeline_name": "pipeline-1",
    "status": passed,
    "created": "2017-02-21T22:52:27.443+08:00",
    "updated": "2017-02-21T22:52:27.443+08:00",
    "build_task": {
        "repo_owner": "yaoshipu",
        "repo_name": "sample-helloworld",
        "branch": "master",
        "pull_request_id": 3,
        "commit_id": "ad233d6e6b11158bb1848d6d231720d6c0203f15",
        "commit_message": "Test",
        "image_tag": "20170730-v2-master",
        "status": "passed",
        "build_nubmer": 33,
        "procs": [
            {
                "id": 724,
                "pid": 1,
                "ppid": 0,
                "pgid": 1,
                "name": "",
                "state": "success",
                "exit_code": 0,
                "start_time": 1501421410,
                "end_time": 1501421436,
                "children": [
                {
                    "id": 725,
                    "pid": 2,
                    "ppid": 1,
                    "pgid": 2,
                    "name": "sample-helloworld.git",
                    "state": "success",
                    "exit_code": 0,
                    "start_time": 1501421412,
                    "end_time": 1501421422
                },
                {
                    "id": 726,
                    "pid": 3,
                    "ppid": 1,
                    "pgid": 3,
                    "name": "build",
                    "state": "success",
                    "exit_code": 0,
                    "start_time": 1501421423,
                    "end_time": 1501421433
                }
                ]
            }
        ]
    },
    "deploy_task": {
        "stack_name": "stack-1",
        "service_name": "service-1",
        "image_tag": "20170221-22-develop",
        "status": failed,
        "error": "update service error: Update Service Error"
    },
    "test_task": {
        "stack_name": "test1",
        "service_name": "doratest",
        "status": created
    },
    "distribute_task": {
        "package_file": "service-1-20170221-22-develop.tar.gz",
        "image_name": "service-1",
        "image_tag": "20170221-22-develop",
        "status": created
    }
}
```	

### 返回参数说明：

|参数|描述|
|---|---|
|id|任务ID|
|task_creator|任务执行者|
|pipeline_name|工作流名称|
|status|任务状态，详见下表|
|created|创建时间|
|updated|更新时间|
|build_task|编译任务信息，详见下表|
|deploy_task|部署任务信息，详见下表|
|test_task|测试任务信息，详见下表|
|distribute_task|分发任务信息，详见下表|

- status

|值|描述|
|--|---|
|created|已创建|
|running|运行中|
|passed|成功|
|failed|失败|
|timeout|超时|
|cancelled|已取消|

- build_task

|参数|描述|
|---|---|
|repo_owner|代码库所有人|
|repo_name|代码库名称|
|branch|编译分支|
|commit_id|commit ID|
|image_tag|镜像标签|
|status|编译状态，见“status”表|
|project_id|kci项目ID|
|build_nubmer|kci编译ID|
|jobs|一次编译可以是多个任务，参考travis|

- deploy_task

|参数|描述|
|---|---|
|stack_name|更新服务所在的服务组名称|
|servive_name|更新服务|
|image_tag|镜像标签|
|status|部署任务状态，见“status”表|
|error|错误信息|

- test_task

|参数|描述|
|---|---|
|stack_name|更新服务所在的服务组名称|
|servive_name|更新服务|
|status|部署任务状态，见“status”表|
|error|错误信息|


- distribute_task

|参数|描述|
|---|---|
|package_file|二进制文件tar包名称，build完成后会上传到相应bucket|
|image_name|镜像名称|
|image_tag|镜像标签|
|status|分发任务状态，见“status”表|


### 错误信息：

**Code:** `6806`

**Content:** `{ "message" : "Get Pipelines Error", "code": "6806", "description": "error details"}`