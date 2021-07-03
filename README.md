# dafka-consumer

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

A Helm Chart for Dafka Consumer

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| name | string | `"kafka-consumer"` |  |
| port | int | `3000` |  |
| replicaCount | int | `2` |  |
| image | string | `"osskit/dafka-consumer:2.0.0"` |  |
| usePrometheus | bool | `true` |  |
| secret.provider | string | `nil` |  |
| secret.resourceName | string | `nil` |  |
| secret.fileName | string | `nil` |  |
| auth.saslUsername | string | `nil` |  |
| auth.saslPasswordFilePath | string | `"/secrets-files/SASL_PASSWORD"` |  |
| target.baseUrl | string | `nil` |  |
| target.port | int | `80` |  |
| target.endpoint | string | `nil` |  |
| target.isAlive | string | `"/isAlive"` |  |
| livenessProbe.httpGet.path | string | `"/isAlive"` |  |
| livenessProbe.httpGet.port | int | `3000` |  |
| readinessProbe.httpGet.path | string | `"/isAlive"` |  |
| readinessProbe.httpGet.port | int | `3000` |  |
| resources.requests.cpu | string | `"400m"` |  |
| resources.requests.memory | string | `"400Mi"` |  |
| resources.limits.cpu | string | `"800m"` |  |
| resources.limits.memory | string | `"800Mi"` |  |
| metrics.enabled | bool | `true` |  |
| metrics.path | string | `"/metrics"` |  |

