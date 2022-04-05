resource "kubernetes_namespace" "namespace_mcm" {
    metadata {
        name = "mcm-${var.environment}"
    }
}

resource "helm_release" "saga-service-release" {
    name        = "command-service"
    namespace   = kubernetes_namespace.namespace_mcm.metadata.0.name
    chart       = "saga-service"
    repository  = "https://ilem0n.github.io/helm-repo/"
}