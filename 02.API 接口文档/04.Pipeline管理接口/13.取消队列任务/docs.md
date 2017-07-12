---
title: 取消队列任务
taxonomy:
    category: docs
---

### 注意事项

- 用于取消队列中的任务

### 请求：

    POST /api/tasks/restart/id/:id/pipeline/:name

### 请求参数说明：

- id：任务的ID
- name: pipeline 名称

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6900`

**Content:** `{ "message" : "Cancel Queue Task Error", "code": "6900", "description": "error details"}`