---
title: 查看服务
taxonomy:
    category: docs
---

### 请求：

   GET /api/stacks/:stackName/services/:serviceName/inspect


### 返回：

**Code:** `200`

**Content:**

```
{
	"created": 1504064707
	"updated": 1504064707
	"service_name": "io",
	"state": "DEPLOYED",
	"status": "RUNNING",
	"domains": [
		"yaoshipu.io.kodo.spock.qiniu.io"
	],
	"image": {
		"name": "qiniu-spock/io",
		"tag": "test"
	}
}
```

### 返回参数说明

|参数|描述|
|service_name|服务名称|
|state|服务状态，详细结果见下表|
|status|容器运行状态，详细结果见下表|
|domains|绑定域名信息|
|image|服务使用的镜像|

- status

|值|说明|
|--|---|
|RUNNING|容器正常运行|
|PARTLY-RUNNING|部分容器正常运行，部分容器非正常运行|
|NOT-RUNNING|容器非正常运行|

- state

|值|说明|
|--|---|
|CREATING|服务刚被创建，正在自动部署容器|
|SCALING-UP|服务正在扩容|
|AUTO-UPDATING|服务正在自动升级|
|MANUAL-UPDATING|服务正在手动升级|
|STARGING|服务正在启动|
|STOPPING|服务正在停止|
|STOPPED|服务处于停止状态|
|DEPLOYED|服务处于已部署状态|


### 错误信息：

**Code:** `635`

**Content:** `{ "message" : "Get Service Inspect Error", "code": "635"}`