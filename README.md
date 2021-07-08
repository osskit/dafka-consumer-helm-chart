# dafka-consumer

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square)

A Helm Chart for Dafka Consumer

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| name | string | `"kafka-consumer"` | name for this consumer |
| port | int | `3000` | the port to use |
| replicaCount | int | `2` | pod count |
| image.name | string | `"osskit/dafka-consumer"` | the image name to use |
| image.tag | string | `"3.0"` | the image tag to use |
| target.baseUrl | string | `nil` | target base url |
| target.port | int | `80` | target port |
| target.healthcheck | string | `nil` | target healthcheck route |
| target.topicsRoutes | string | `nil` | mapping of topics to corresponding routes in target |
| target.processingDelay | string | `nil` | adds delay before processing next record |
| livenessProbe.httpGet.path | string | `"/healthcheck"` | the path for liveness check |
| livenessProbe.httpGet.port | int | `3000` |  |
| readinessProbe.httpGet.path | string | `"/healthcheck"` | the path for readiness check |
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

