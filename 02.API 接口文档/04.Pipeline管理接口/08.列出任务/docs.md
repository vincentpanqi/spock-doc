---
title: 列出任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/pipeline/:name

### 请求参数说明：

- name: pipeline 名称

### 返回：

**Code:** `200`

**Content:** 

```
[
  {
    "id": 38,
    "task_creator": "yaoshipu",
    "pipeline_name": "demo-pipeline",
    "status": "failed",
    "created": 1499741890,
    "updated": 1499741890
  },
  {
    "id": 37,
    "task_creator": "yaoshipu",
    "pipeline_name": "demo-pipeline",
    "status": "failed",
    "created": 1499324913,
    "updated": 1499324913
  }
]
```	

### 错误信息：

**Code:** `6810`

**Content:** `{ "message" : "List Pipeline Tasks Error", "code": "6810", "description": "error details"}`