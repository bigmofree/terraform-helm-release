resource "helm_release" "this" {
  namespace = var.namespace
  name      = var.name
  chart     = var.chart
  wait      = var.wait
  values    = var.values
}