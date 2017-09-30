## 创建产品

 
### 注意事项

- 需要`admin`权限
- 产品模板依赖次序在`groups`里描述, `groups` 外层数组为顺序执行，内层数组为并行执行
- 产品模板依赖服务组,需要调用`创建服务组模板`预先创建

### 请求：

    POST /api/products

### 请求参数
	
**Type:** `application/json`

**Content:**

```
{
  "product_name": "mongo-rs",
  "visibility": "public",
  "groups": [
    {
      "group_name": "mongo-rs",
      "revision": 1,
      "services": [
        [
          {
            "service_name": "mongo3.2",
            "containers": [
              {
                "name": "mongo",
                "image": "mongo:3.2"
              }
            ],
            "revision": 1
          }
        ],
        [
          {
            "service_name": "mongo-init-job",
            "containers": [
              {
                "name": "mongo-client",
                "image": "index.qiniu.com/spocktest/mongo-client"
              }
            ],
            "revision": 2
          }
        ]
      ]
    }
  ]
}
```

### 请求参数说明：

|参数|说明|
|---|---|
|product_name|产品名称，全局唯一|
|visibility| 授权他人部署， 参数为 private, public, 默认为 private
|groups|产品依赖服务组，服务组按配置的先后顺序启动，具体参数详见`创建服务组模版`|
|revision|版本号|

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "invalid ProductArgs", "code": "400"}`

**Content:** `{ "message" : "invalid ProductName or Groups", "code": "400"}`

**Code:** `623`

**Content:** `{ "message" : "Create Product Error", "code": "623"}`