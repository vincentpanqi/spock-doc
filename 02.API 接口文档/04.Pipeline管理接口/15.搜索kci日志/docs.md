---
title: 搜索kci日志
taxonomy:
    category: docs
---

### 请求：

    GET /api/kci/projects/:projectId/builds/:buildNum/jobs/:jobNum/logs

### 返回:

**Code:** `200`

**Content:**

```
[
	{
		"Proc":"database",
		"Time":258,
		"Pod":0,
		"Out":"2017-05-12T15:36:43.711+0800 I CONTROL  [signalProcessingThread] dbexit:  rc: 0"
	}
]
```

### 错误信息：

**Code:** `6706`

**Content:** `{ "message" : "Kci Get Build Log Error", "code": "6706"}`
