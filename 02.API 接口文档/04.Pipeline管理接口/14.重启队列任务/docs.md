---
title: 重启队列中的任务
taxonomy:
    category: docs
---

### 注意事项

- 用于重启队列中的 pending 任务，内部使用

### 请求：

    POST /api/pipeline/queue/:id/restart

### 请求参数说明：

- id：任务的ID

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6902`

**Content:** `{ "message" : "Restart Queue Task Error", "code": "6902", "description": "error details"}`