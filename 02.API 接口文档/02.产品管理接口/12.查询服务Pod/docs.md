---
title: 查询服务Pod
taxonomy:
    category: docs
---

### 请求：

    GET /api/pods/:podName


### 请求参数：

**Type:** `application/json`

**Content:**

```
{
  "apiVersion": "v1",
  "kind": "Pod",
  "metadata": {
    "annotations": {
      "kubernetes.io/created-by": "{\"kind\":\"SerializedReference\",\"apiVersion\":\"v1\",\"reference\":{\"kind\":\"ReplicaSet\",\"namespace\":\"yaoshipu\",\"name\":\"portal-v4-certificate-960683\",\"uid\":\"8ea135c2-9449-11e7-b296-f01fafde0d83\",\"apiVersion\":\"extensions\",\"resourceVersion\":\"14404670\"}}\n",
      "kubernetes.io/limit-ranger": "LimitRanger plugin set: cpu, memory request for container certificate; cpu, memory limit for container certificate"
    },
    "creationTimestamp": "2017-09-08T03:55:30Z",
    "generateName": "portal-v4-certificate-960683-",
    "labels": {
      "pod-template-hash": "960683",
      "s-group": "portal-v4",
      "s-product": "portal-v4",
      "s-service": "certificate"
    },
    "name": "portal-v4-certificate-960683-fjvfd",
    "namespace": "yaoshipu",
    "ownerReferences": [
      {
        "apiVersion": "extensions/v1beta1",
        "blockOwnerDeletion": true,
        "controller": true,
        "kind": "ReplicaSet",
        "name": "portal-v4-certificate-960683",
        "uid": "8ea135c2-9449-11e7-b296-f01fafde0d83"
      }
    ],
    "resourceVersion": "14405787",
    "selfLink": "/api/v1/namespaces/yaoshipu/pods/portal-v4-certificate-960683-fjvfd",
    "uid": "8ebd39aa-9449-11e7-b296-f01fafde0d83"
  },
  "spec": {
    "containers": [
      {
        "image": "index.qiniu.com/spocktest/certificate:latest",
        "imagePullPolicy": "Always",
        "name": "certificate",
        "ports": [
          {
            "containerPort": 80,
            "protocol": "TCP"
          }
        ],
        "resources": {
          "limits": {
            "cpu": "1",
            "memory": "2Gi"
          },
          "requests": {
            "cpu": "100m",
            "memory": "512Mi"
          }
        },
        "terminationMessagePath": "/dev/termination-log",
        "terminationMessagePolicy": "File",
        "volumeMounts": [
          {
            "mountPath": "/var/run/secrets/kubernetes.io/serviceaccount",
            "name": "default-token-146b7",
            "readOnly": true
          }
        ]
      }
    ],
    "dnsPolicy": "ClusterFirst",
    "imagePullSecrets": [
      {
        "name": "qn-registry-secret"
      }
    ],
    "nodeName": "cs58",
    "restartPolicy": "Always",
    "schedulerName": "default-scheduler",
    "securityContext": {},
    "serviceAccount": "default",
    "serviceAccountName": "default",
    "terminationGracePeriodSeconds": 30,
    "tolerations": [
      {
        "effect": "NoExecute",
        "key": "node.alpha.kubernetes.io/notReady",
        "operator": "Exists",
        "tolerationSeconds": 300
      },
      {
        "effect": "NoExecute",
        "key": "node.alpha.kubernetes.io/unreachable",
        "operator": "Exists",
        "tolerationSeconds": 300
      }
    ],
    "volumes": [
      {
        "name": "default-token-146b7",
        "secret": {
          "defaultMode": 420,
          "secretName": "default-token-146b7"
        }
      }
    ]
  },
  "status": {
    "conditions": [
      {
        "lastProbeTime": null,
        "lastTransitionTime": "2017-09-08T03:55:30Z",
        "status": "True",
        "type": "Initialized"
      },
      {
        "lastProbeTime": null,
        "lastTransitionTime": "2017-09-08T03:56:57Z",
        "status": "True",
        "type": "Ready"
      },
      {
        "lastProbeTime": null,
        "lastTransitionTime": "2017-09-08T03:55:30Z",
        "status": "True",
        "type": "PodScheduled"
      }
    ],
    "containerStatuses": [
      {
        "containerID": "docker://123e41422d122774dfa75219dec7f24764f95866bbf7ef0ccac31fb8e4969864",
        "image": "index.qiniu.com/spocktest/certificate:latest",
        "imageID": "docker-pullable://index.qiniu.com/spocktest/certificate@sha256:14887d7fd1360565ce303d3e29245afaa8c03b7bbab46583d2f829b61d511c85",
        "lastState": {
          "terminated": {
            "containerID": "docker://5be5ed04a3f7f548126a52eb1c9f6606bd0845ff7815406678e55c9b78b1a470",
            "exitCode": 1,
            "finishedAt": "2017-09-08T03:56:26Z",
            "reason": "Error",
            "startedAt": "2017-09-08T03:56:26Z"
          }
        },
        "name": "certificate",
        "ready": true,
        "restartCount": 3,
        "state": {
          "running": {
            "startedAt": "2017-09-08T03:56:50Z"
          }
        }
      }
    ],
    "hostIP": "10.200.20.69",
    "phase": "Running",
    "podIP": "172.20.177.149",
    "qosClass": "Burstable",
    "startTime": "2017-09-08T03:55:30Z"
  }
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid GetServicePod Args", "code": "400"}`

**Code:** `638`

**Content:** `{ "message" : "get service pod error", "code": "638"}`