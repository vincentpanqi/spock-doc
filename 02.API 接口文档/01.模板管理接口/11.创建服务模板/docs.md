---
title: 创建服务模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`admin`权限
- 模版分成两类部署服务模版和测试模版
- `test`字段是测试服务专属字段，部署服务不需要

### 请求：

    POST /api/templates/services

### 请求参数：

```
{
  "service_name": "demo",
  "yaml": "yaml files",
  "test": {
    "command": "demo command",
    "result_path": "/test/result/path"
  }
}
```

### 参数说明:

| 参数 | 描述 |
|-----|------|
| service_name | 服务名称，全局唯一 |
| yaml | 服务kube配置文件 |
| test | 配置测试服务额外字段 |


```
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: fe-financial
  namespace: {{.Namespace}}
  labels:
    s-product: {{.Product}}
    s-group: {{.Group}}
    s-service: {{.Service}}
spec:
  rules:
  - host: {{.Service}}-{{.Namespace}}.ke-cs.dev.qiniu.io
    http:
      paths:
      - backend:
          serviceName: portal-v4-fe-financial
          servicePort: 80
        path: /
---
apiVersion: v1
kind: Service
metadata:
  name: portal-v4-fe-financial
  namespace: {{.Namespace}}
  labels:
    s-product: {{.Product}}
    s-group: {{.Group}}
    s-service: {{.Service}}
spec:
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  selector:
    s-product: {{.Product}}
    s-group: {{.Group}}
    s-service: {{.Service}}
  clusterIP: None
---
apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: portal-v4-fe-financial
  namespace: {{.Namespace}}
  labels:
    s-product: {{.Product}}
    s-group: {{.Group}}
    s-service: {{.Service}}
spec:
  replicas: 1
  selector:
    matchLabels:
      s-product: {{.Product}}
      s-group: {{.Group}}
      s-service: {{.Service}}
  template:
    metadata:
      labels:
        s-product: {{.Product}}
        s-group: {{.Group}}
        s-service: {{.Service}}
    spec:
      imagePullSecrets:
        - name: qn-registry-secret
      containers:
        - image: index.qiniu.com/spocket/test:latest
          imagePullPolicy: Always
          name: fe-financial
          ports:
            - protocol: TCP
              containerPort: 80
```
### 返回：

**Code:** `200`

### 错误信息:

**Code:** `6101`

**Content:** `{ "message" : "Update Template Error", "code": "6101", "description": "error details"}`