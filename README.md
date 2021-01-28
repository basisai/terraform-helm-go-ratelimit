# Envoy Ratelimit

This deploys an [Envoy Ratelimit](https://github.com/envoyproxy/ratelimit) service using
a [Helm Chart](https://github.com/softonic/go-ratelimit-chart).

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| helm | >= 2.0.1 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 2.0.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| affinity | Pod affinity | `map` | `{}` | no |
| chart\_name | Helm chart name to provision | `string` | `"go-ratelimit"` | no |
| chart\_namespace | Namespace to install the chart into | `string` | `"default"` | no |
| chart\_repository | Helm repository for the chart | `string` | `"https://basisai.github.io/charts/"` | no |
| chart\_version | Version of Chart to install. Set to empty to install the latest version | `string` | `""` | no |
| config | Configuration file in YAML | `string` | `"# Start with empty config"` | no |
| debug\_port | Port for debugging | `number` | `6070` | no |
| fullname\_override | Full name Override for Helm resources | `string` | `""` | no |
| grpc\_port | Port for GRPC | `number` | `8081` | no |
| hpa\_max\_replicas | Maximum number of replicas for HPA | `number` | `5` | no |
| hpa\_min\_replicas | Minimum number of replicas for HPA | `number` | `1` | no |
| http\_port | Port for HTTP | `number` | `8080` | no |
| image | Docker image for ratelimit | `string` | `"envoyproxy/ratelimit"` | no |
| image\_tag | Docker image tag for ratelimit. Defaults to chart AppVersion | `string` | `""` | no |
| log\_level | Log level | `string` | `"debug"` | no |
| max\_history | Max History for Helm | `number` | `20` | no |
| name\_override | Name Override for Helm resources | `string` | `""` | no |
| pdb | Pod disruption budget | `map` | `{}` | no |
| pod\_annotations | Annotations for pods | `map` | `{}` | no |
| pod\_labels | Labels for pods | `map` | `{}` | no |
| pod\_security\_context | Pod security context | `map` | `{}` | no |
| priority\_class\_name | Pod priority class name | `string` | `""` | no |
| redis\_port | Redis Port | `number` | `6379` | no |
| redis\_socket\_type | Redis Socket type | `string` | `"tcp"` | no |
| redis\_url | Redis Server URL | `string` | `"redis"` | no |
| redish\_enabled | Enable Redish dependant Chart | `bool` | `true` | no |
| redish\_fullname\_override | Override name for Redish chart | `string` | `"redish"` | no |
| redish\_persistence\_enabled | Enable persistaence for Redish | `bool` | `false` | no |
| redish\_port | Port for Redish | `number` | `6379` | no |
| redish\_twemproxy\_enabled | Enable twemproxy for Redish chart | `bool` | `false` | no |
| redish\_update\_strategy | Update strategy for Redish | `map` | <pre>{<br>  "type": "OnDelete"<br>}</pre> | no |
| release\_name | Helm release name | `string` | `"go-ratelimit"` | no |
| replica | Number of replicas | `number` | `1` | no |
| resources | Pod resources | `map` | `{}` | no |
| security\_context | Container security context | `map` | `{}` | no |
| service\_account\_annotations | Annotations for service account | `map` | `{}` | no |
| service\_account\_create | Create service account for pod | `bool` | `true` | no |
| service\_account\_name | Override service account name | `string` | `""` | no |
| tolerations | Pod Tolerations | `list` | `[]` | no |

## Outputs

No output.
