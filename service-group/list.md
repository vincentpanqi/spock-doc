## 列出服务组


#### 注意事项

- 产品状态有如下3种:
    Successful: 运行良好
    Unstable:   运行不稳定（部分stack/service挂了）
    Failed:     创建失败

### 请求：

    GET /api/products/:productName/groups

### 返回：

**Code:** `200`

**Content:**

```
  [
    {
      "group_name": "portal-v4",
      "services": [
        [
          "index",
          "kirk",
          "kodo",
          "fusion",
          "certificate",
          "jedi",
          "pili",
          "vance",
          "kylin",
          "fe-financial"
        ]
      ],
      "status": "Running"
    }
  ]
```

### 参数说明:

- `services` 为服务依赖, 外层数组为顺序执行，内层数组为并行执行
- `status` 为总体运行状态, 状态集包括 
  - `Running` 运行良好
  - `Unstable` 运行不稳定, 部分服务未正常运行
  - `Error` 内部错误

### 错误信息:

**Code:** `622`

**Content:** `{ "message" : "List Products Error", "code": "622"}`