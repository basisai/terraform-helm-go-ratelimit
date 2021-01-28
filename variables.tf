variable "release_name" {
  description = "Helm release name"
  default     = "go-ratelimit"
}

variable "chart_name" {
  description = "Helm chart name to provision"
  default     = "go-ratelimit"
}

variable "chart_repository" {
  description = "Helm repository for the chart"
  default     = "https://basisai.github.io/charts/"
}

variable "chart_version" {
  description = "Version of Chart to install. Set to empty to install the latest version"
  default     = ""
}

variable "chart_namespace" {
  description = "Namespace to install the chart into"
  default     = "default"
}

variable "max_history" {
  description = "Max History for Helm"
  default     = 20
}

variable "name_override" {
  description = "Name Override for Helm resources"
  default     = ""
}

variable "fullname_override" {
  description = "Full name Override for Helm resources"
  default     = ""
}

variable "image" {
  description = "Docker image for ratelimit"
  default     = "envoyproxy/ratelimit"
}

variable "image_tag" {
  description = "Docker image tag for ratelimit. Defaults to chart AppVersion"
  default     = ""
}

variable "replica" {
  description = "Number of replicas"
  default     = 1
}

variable "pod_labels" {
  description = "Labels for pods"
  default     = {}
}

variable "pod_annotations" {
  description = "Annotations for pods"
  default     = {}
}

variable "service_account_create" {
  description = "Create service account for pod"
  default     = true
}

variable "service_account_annotations" {
  description = "Annotations for service account"
  default     = {}
}

variable "service_account_name" {
  description = "Override service account name"
  default     = ""
}

variable "pod_security_context" {
  description = "Pod security context"
  default     = {}
}

variable "security_context" {
  description = "Container security context"
  default     = {}
}

variable "hpa_min_replicas" {
  description = "Minimum number of replicas for HPA"
  default     = 1
}

variable "hpa_max_replicas" {
  description = "Maximum number of replicas for HPA"
  default     = 5
}

variable "resources" {
  description = "Pod resources"
  default     = {}
}

variable "tolerations" {
  description = "Pod Tolerations"
  default     = []
}

variable "affinity" {
  description = "Pod affinity"
  default     = {}
}

variable "priority_class_name" {
  description = "Pod priority class name"
  default     = ""
}

variable "pdb" {
  description = "Pod disruption budget"
  default     = {}
}

variable "redis_url" {
  description = "Redis Server URL"
  default     = "redis"
}

variable "redis_socket_type" {
  description = "Redis Socket type"
  default     = "tcp"
}

variable "redis_port" {
  description = "Redis Port"
  default     = 6379
}

variable "debug_port" {
  description = "Port for debugging"
  default     = 6070
}

variable "grpc_port" {
  description = "Port for GRPC"
  default     = 8081
}

variable "http_port" {
  description = "Port for HTTP"
  default     = 8080
}

variable "log_level" {
  description = "Log level"
  default     = "debug"
}

variable "config" {
  description = "Configuration file in YAML"
  default     = "# Start with empty config"
}

variable "redish_enabled" {
  description = "Enable Redish dependant Chart"
  default     = true
}

variable "redish_fullname_override" {
  description = "Override name for Redish chart"
  default     = "redish"
}

variable "redish_port" {
  description = "Port for Redish"
  default     = 6379
}

variable "redish_persistence_enabled" {
  description = "Enable persistaence for Redish"
  default     = false
}

variable "redish_update_strategy" {
  description = "Update strategy for Redish"
  default = {
    type = "OnDelete"
  }
}

variable "redish_twemproxy_enabled" {
  description = "Enable twemproxy for Redish chart"
  default     = false
}
