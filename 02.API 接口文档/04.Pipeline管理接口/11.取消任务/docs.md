---
title: 取消任务
taxonomy:
    category: docs
---

### 注意事项

- 用于取消运行中的任务，不能取消调用第三方接口的子任务，下一个子任务会被取消

### 请求：

    DELETE /api/tasks/id/:id/pipeline/:name

    POST /api/v2/tasks/id/:id/pipelines/:name/cancel

### 请求参数说明：

- id：运行任务的ID

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6809`

**Content:** `{ "message" : "Cancel Task Error", "code": "6809", "description": "error details"}`