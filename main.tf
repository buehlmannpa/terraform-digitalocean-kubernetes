// Create Kubernetes Cluster k8s_cluster_c1
module "k8s_cluster_c1" {
  source = "./terraform_kubernetes"

  clustername = var.clustername_cluster1
  do_token    = var.do_token
}

// Create Kubernetes Cluster k8s_cluster_c2
module "k8s_cluster_c2" {
  source = "./terraform_kubernetes"

  clustername = var.clustername_cluster2
  do_token    = var.do_token
}
