---
title: 任务测试结果url
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/id/:id/pipeline/:name/resulturl

### 请求参数说明：

### 返回:

**Code:** `200`

**Content:** 

```
{
    "http://ou55vtrff.bkt.clouddn.com/xxx/yyy/summary.xml"
}
```

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid GetPipelineTestResultUrl id Args", "code": "400", "description": "error details"}`

**Code:** `6806`

**Content:** `{ "message" : "Get Task Error", "code": "6806"}`

**Code:** `6812`

**Content:** `{ "message" : "Test Task Not Found Error", "code": "6812"}`

**Code:** `6813`

**Content:** `{ "message" : "Test Result Not Found Error", "code": "6813"}`
