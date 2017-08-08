---
title: 查询构建实时日志

taxonomy:
    category: docs
---

### 注意事项

- 编译完成以后不能查询到日志

### 请求：

    WS /api/builds/:owner/:name/ws/logs/:buildNum/:jobNum

### 请求参数说明：

- owner: Github owner
- name: Github Repo
- buildNum: Drone build number
- jobNum: Drone job number 默认情况下jobNum=1, 只有在跑了matrix情况下才有其他的jobNum

### 返回:

**Code:** `200`
