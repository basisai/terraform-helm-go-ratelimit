resource "helm_release" "release" {
  name       = var.release_name
  chart      = var.chart_name
  repository = var.chart_repository
  version    = var.chart_version
  namespace  = var.chart_namespace

  max_history = var.max_history

  values = [
    templatefile("${path.module}/templates/values.yaml", local.values),
  ]
}

locals {
  values = {
    name_override     = var.name_override
    fullname_override = var.fullname_override

    image     = var.image
    image_tag = var.image_tag
    replica   = var.replica

    pod_labels      = jsonencode(var.pod_labels)
    pod_annotations = jsonencode(var.pod_annotations)

    service_account_create      = var.service_account_create
    service_account_annotations = jsonencode(var.service_account_annotations)
    service_account_name        = var.service_account_name

    pod_security_context = jsonencode(var.pod_security_context)
    security_context     = jsonencode(var.security_context)

    hpa_min_replicas = var.hpa_min_replicas
    hpa_max_replicas = var.hpa_max_replicas

    env                 = jsonencode(var.env)
    resources           = jsonencode(var.resources)
    tolerations         = jsonencode(var.tolerations)
    affinity            = jsonencode(var.affinity)
    priority_class_name = var.priority_class_name
    pdb                 = jsonencode(var.pdb)

    debug_port = var.debug_port
    grpc_port  = var.grpc_port
    http_port  = var.http_port

    log_level = var.log_level
    config    = yamlencode(var.config)

    redis_url         = var.redis_url
    redis_socket_type = var.redis_socket_type
    redis_port        = var.redis_port

    redish_enabled             = var.redish_enabled
    redish_fullname_override   = var.redish_fullname_override
    redish_port                = var.redish_port
    redish_persistence_enabled = var.redish_persistence_enabled
    redish_update_strategy     = jsonencode(var.redish_update_strategy)
    redish_twemproxy_enabled   = var.redish_twemproxy_enabled
  }
}
