
release "helm_release" "saga-service-release" {
    name        = "command-service"
    namespace   = var.namespace_name
    chart       = "saga-service"
    repository  = "https://ilem0n.github.io/helm-repo/"
}