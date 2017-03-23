---
title: 重启服务组
taxonomy:
    category: docs
---

### 请求：

   POST /api/stacks/:stackName/restart

### 请求参数说明：

|参数|描述|
|---|---|
|stackName|服务组名称|

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `624`

**Content:** `{ "message" : "Restart Stack Error", "code": "624"}`