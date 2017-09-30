## 查询服务配置文件


### 请求：

    GET /api/products/:productName/groups/:groupName/services/:serviceName/configmap

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
    "apiVersion": "v1",
    "items": [
        {
            "apiVersion": "v1",
            "data": {
                "rs-init": "rs.initiate( {\n  _id : \"rs0\",\n  members: [ \n    { _id : 0, host : \"mongo-0.mongo:27017\" },\n    { _id : 1, host : \"mongo-1.mongo:27017\" },\n    { _id : 2, host : \"mongo-2.mongo:27017\" }\n  ]\n})\n"
            },
            "kind": "ConfigMap",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"data\":{\"rs-init\":\"rs.initiate( {\\n  _id : \\\"rs0\\\",\\n  members: [ \\n    { _id : 0, host : \\\"mongo-0.mongo:27017\\\" },\\n    { _id : 1, host : \\\"mongo-1.mongo:27017\\\" },\\n    { _id : 2, host : \\\"mongo-2.mongo:27017\\\" }\\n  ]\\n})\\n\"},\"kind\":\"ConfigMap\",\"metadata\":{\"annotations\":{},\"labels\":{\"s-group\":\"mongo-rs\",\"s-product\":\"mongo-rs\",\"s-service\":\"mongo3.2\"},\"name\":\"mongo-configmap\",\"namespace\":\"default\"}}\n"
                },
                "creationTimestamp": "2017-09-13T09:49:51Z",
                "labels": {
                    "s-group": "mongo-rs",
                    "s-product": "mongo-rs",
                    "s-service": "mongo3.2"
                },
                "name": "mongo-configmap",
                "namespace": "default",
                "resourceVersion": "15689820",
                "selfLink": "/api/v1/namespaces/default/configmaps/mongo-configmap",
                "uid": "e3184f5b-9868-11e7-b296-f01fafde0d83"
            }
        }
    ],
    "kind": "List",
    "metadata": {},
    "resourceVersion": "",
    "selfLink": ""
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid GetServicePod Args", "code": "400"}`

**Code:** `638`

**Content:** `{ "message" : "get service pod error", "code": "638"}`