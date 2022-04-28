resource "digitalocean_project" "kubernetes_cluster" {
  name        = "ChaosMonkey-Kubernetes"
  description = "All resources for the thesis about the Kubernetes ChaosMonkey"
  environment = "Development"

  resources = [
    digitalocean_kubernetes_cluster.k8s_cluster_c1.urn
  ]
}