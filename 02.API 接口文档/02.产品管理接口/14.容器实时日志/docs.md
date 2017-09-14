---
title: 容器实时日志
taxonomy:
    category: docs
---

### 请求：

    WS /api/logs/ws/pods/:podName/containers/:containerName

### 请求参数说明：

|参数|说明|
|---|---|
|podName|服务Pod名称|
|containerName|容器名称|

### 返回:

**Code:**

### 错误信息：

**Code:** `6305`

**Content:** `{ "message" : "Get Service Inspect Error", "code": "6305"}`
