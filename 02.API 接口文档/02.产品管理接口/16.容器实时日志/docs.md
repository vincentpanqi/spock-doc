---
title: 容器实时日志
taxonomy:
    category: docs
---

### 请求：

    GET /api/logs/containers/realtime?stack_name=kodo&service_name=io&since=0&tail=3

### 请求参数说明：

|参数|说明|
|---|---|
|stack_name|服务组名称|
|service_name|服务名称|
|since|打印该时间戳之后的日志，该参数仅对日志缓冲中的日志有效，实时日志不受其影响。默认 0|
|tail|打印sinceUnixTimestamp时间戳之后最新的tailNum条日志，该参数仅对日志缓冲中的日志有效，实时日志不受其影响。默认 0|

### 返回:

**Code:**

### 错误信息：

**Code:** `6305`

**Content:** `{ "message" : "Get Service Inspect Error", "code": "6305"}`
