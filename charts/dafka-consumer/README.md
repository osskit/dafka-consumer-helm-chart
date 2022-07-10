# dafka-consumer

![Version: 5.1.0](https://img.shields.io/badge/Version-5.1.0-informational?style=flat-square)

A Helm Chart for Dafka Consumer

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| name | string | `"kafka-consumer"` | name for this consumer |
| port | int | `3000` | the port to use |
| broker | string | `nil` | the url of the kafka broker |
| replicaCount | int | `1` | pod count |
| image.name | string | `"osskit/dafka-consumer"` | the image name to use |
| image.tag | string | `"6.0"` | the image tag to use |
| target.baseUrl | string | `nil` | target base url |
| target.port | int | `80` | target port |
| target.healthcheck | string | `nil` | target healthcheck route |
| target.topicsRoutes | string | `nil` | mapping of topics to corresponding routes in target |
| target.processingDelay | string | `nil` | adds delay before processing next record |
| livenessProbe.initialDelaySeconds | int | `180` |  |
| resources.requests.cpu | string | `"50m"` | cpu requests |
| resources.requests.memory | string | `"100Mi"` | memory requests |
| resources.limits.cpu | string | `"200m"` | cpu limits |
| resources.limits.memory | string | `"400Mi"` | memory limits |
| podLabels | string | `nil` | labels to add to the pod metadata |
| metrics.enabled | bool | `true` | should prometheus scrape this server |
| metrics.path | string | `"/metrics"` | a path prometheus should scrape metrics from |
| auth.enabled | bool | `false` | should use authentication |
| auth.saslUsername | string | `nil` | sasl username |
| auth.saslMechanism | string | `"plain"` | sasl mechanism (plain or scram) |
| auth.saslPassword | string | `nil` | sasl password (not encrypted) |
| auth.secrets.useOpaqueSecrets | bool | `true` | should mount secrets to opaque secrets |
| auth.secrets.useTrustsore | bool | `false` | should use truststore |
| auth.secrets.gcp.saslPasswordResource | string | `nil` | gcp secret resource for sasl password |
| auth.secrets.gcp.truststoreResource | string | `nil` | gcp secret resource for truststore file |
| auth.secrets.gcp.truststorePasswordResource | string | `nil` | gcp secret resource for truststore password |
| auth.secrets.aws.objectName | string | `nil` | aws objectName in secret manager (should be json object) |
| auth.secrets.aws.saslPasswordPath | string | `nil` | path in the secret manager object for the sasl password |
| auth.secrets.aws.truststorePath | string | `nil` | path in the secret manager object for truststore |
| auth.secrets.aws.truststorePasswordPath | string | `nil` | path in the secret manager object for truststore password |
| auth.secrets.vault.saslPasswordSecretPath | string | `nil` | vault secret path for sasl password |
| auth.secrets.vault.saslPasswordSecretKey | string | `nil` | vault secret key for sasl password |
| auth.secrets.vault.truststoreSecretPath | string | `nil` | vault secret path for truststore file |
| auth.secrets.vault.truststoreSecretKey | string | `nil` | vault secret key for truststore file |
| auth.secrets.vault.truststorePasswordSecretPath | string | `nil` | vault secret path for truststore password |
| auth.secrets.vault.truststorePasswordSecretKey | string | `nil` | vault secret key for truststore password |
