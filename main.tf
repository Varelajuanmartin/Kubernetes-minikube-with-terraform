resource "kubernetes_namespace" "kubernetes-terraform" {
    metadata {
        name = "kubernetes-terraform"
    }
}
