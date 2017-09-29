---
title: 4.5 删除 Pipeline
taxonomy:
    category: docs
---

### 注意事项

- 需要admin权限

### 请求：

    DELETE /api/pipelines/:name
    DELETE /api/v2/pipelines/:name

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6804`

**Content:** `{ "message" : "delete pipeline error", "code": "6804", "description": "error details"}`
