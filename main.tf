#
# Keda Resources
#

resource "kubernetes_namespace" "keda" {
  metadata {
    name = var.namespace_name
  }
}

resource "helm_release" "kedacore" {
  name       = var.release_name
  namespace  = var.namespace_name

  repository = "https://kedacore.github.io/charts"
  chart      = "keda"
  version    = var.chart_version

  # Ingress values
  values     = [file("${path.module}/values.yaml")]
}

#
# Walrus information
#

locals {
  context = var.context
}