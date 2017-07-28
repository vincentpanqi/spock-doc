---
title: 测试任务实时日志
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/pipeline/:name/logs/realtime?since=0&tail=3

### 请求参数说明：

|参数|说明|
|---|---|
|:name|pipeline_name|
|since|打印该时间戳之后的日志，该参数仅对日志缓冲中的日志有效，实时日志不受其影响。默认 0|
|tail|打印sinceUnixTimestamp时间戳之后最新的tailNum条日志，该参数仅对日志缓冲中的日志有效，实时日志不受其影响。默认 0|

### 返回:

**Code:**

### 错误信息：

**Code:** `6305`

**Content:** `{ "message" : "Get Service Inspect Error", "code": "6305"}`

**Code:** `6803`

**Content:** `{ "message" : "Get Pipeline Error", "code": "6803"}`
