# dafka-consumer

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

A Helm Chart for Dafka Consumer

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| name | string | `"kafka-consumer"` | name for this consumer |
| port | int | `3000` | the port to use |
| replicaCount | int | `2` | pod count |
| image.name | string | `"osskit/dafka-consumer"` | the image name to use |
| image.tag | string | `"2.0"` | the image tag to use |
| target.baseUrl | string | `nil` | base url of target |
| target.port | int | `80` | target port |
| target.endpoint | string | `nil` | endpoint to call target on incoming record |
| target.isAlive | string | `"/isAlive"` | target liveliness route |
| livenessProbe.httpGet.path | string | `"/isAlive"` | the path for liveness check |
| livenessProbe.httpGet.port | int | `3000` |  |
| readinessProbe.httpGet.path | string | `"/isAlive"` | the path for readiness check |
| readinessProbe.httpGet.port | int | `3000` |  |
| resources.requests.cpu | string | `"400m"` | cpu requests |
| resources.requests.memory | string | `"400Mi"` | memory requests |
| resources.limits.cpu | string | `"800m"` | cpu limits |
| resources.limits.memory | string | `"800Mi"` | memory limits |
| metrics.enabled | bool | `true` | should prometheus scrape this server |
| metrics.path | string | `"/metrics"` | a path prometheus should scrape metrics from |
| auth.saslUsername | string | `nil` | sasl username |
| auth.saslPasswordResource | string | `nil` | gcp secret resource for sasl password |
| auth.useOpaqueSecrets | bool | `true` | mount GCP secrets to Opaque secrets |
| auth.truststore.truststoreResource | string | `nil` | gcp secret resource for truststore file |
| auth.truststore.truststorePasswordResource | string | `nil` | gcp secret resource for truststore password |

