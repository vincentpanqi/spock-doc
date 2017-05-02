---
title: 取消任务
taxonomy:
    category: docs
---

### 注意事项

- 用于取消运行中的任务

### 请求：

    DELETE /api/tasks/id/:id/pipeline/:name

### 请求参数说明：

- id：运行任务的ID

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6809`

**Content:** `{ "message" : "Cancel Task Error", "code": "6809", "description": "error details"}`