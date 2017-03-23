---
title: 同步服务配置项
taxonomy:
    category: docs
---

#### 注意事项

- 接口说明：用户用于和admin配置的键值对保持同步

### 请求：

    POST /api/configs/sync

### 路径参数

**Optional:** 默认不填是false

`force=<false|true>`

### 路径参数说明

- force=true: 强制同步admin的最新配置，用户自己增加的配置不会被清空
- force=false: 非强制同步admin的最新配置，只添加admin新增的配置项，不覆盖用户的修改

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `625`

**Content:** `{ "message" : "Sync Config Service Specs Error", "code": "625"}`