---
title: 重试任务
taxonomy:
    category: docs
---

### 注意事项

- 用于重试已经完成的任务，只会重试失败的子任务

### 请求：

    GET /api/tasks/restart/id/:id/pipeline/:name

    POST /api/v2/tasks/id/:id/pipelines/:name/restart

### 请求参数说明：

- id：队列任务的ID
- name: pipeline 名称

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6903`

**Content:** `{ "message" : "Restart Task Error", "code": "6903", "description": "error details"}`