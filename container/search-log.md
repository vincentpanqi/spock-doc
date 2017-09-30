## 搜索容器日志

 
### 请求：

    GET /api/logs/search/container?stack_name=kodo&service_name=io&from_time=1481440608&to_time=1484032608&tail=true&from=0&size=3

### 请求参数说明：

|参数|说明|
|---|---|
|stack_name|服务组名称|
|service_name|服务名称|
|from_time|起始时间|
|to_time|终止时间|
|tail|是否从尾部开始,true/false|
|from|日志的开始位置,默认值:0|
|size|先前的日志条数,默认值:0|

### 返回:

**Code:** `200`

**Content:** 

```
	[
		"2017/01/10 15:16:41.359727 [FQAAANQIJcfJV5gU][INFO] qbox.us/ptfd/cfgapi.v1/client.go:143: Client.updateDgs: start...",
		"2017/01/10 15:16:41.361855 [FQAAANQIJcfJV5gU][INFO] qbox.us/ptfd/cfgapi.v1/client.go:153: stg.update: dg => {Hosts:[http://ptfdstg.kodo.qbox.net:6000] Dgids:[3001 3002 3003] Guid:0123456789012345 Writable:true Repair:false Idc:nb}",
		"2017/01/10 15:16:41.361890 [FQAAANQIJcfJV5gU][INFO] qbox.us/ptfd/cfgapi.v1/client.go:180: Client.updateDgs: len(dgids) 3, len(hosts) 1",
		"Summary: 3/689452"
	]
```

### 错误信息:

**Code:** `6208`

**Content:** `{ "message" : "Search Container Logs Error", "code": "6208"}`
