---
title: 重试任务
taxonomy:
    category: docs
---

### 注意事项

- 用于重试已经完成的任务，只会重试失败的子任务

### 请求：

    DELETE /api/pipeline/queue/:id

### 请求参数说明：

- id：队列任务的ID

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6900`

**Content:** `{ "message" : "Cancel Queue Task Error", "code": "6900", "description": "error details"}`