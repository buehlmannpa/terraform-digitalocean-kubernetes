# terraform-digitalocean-kubernetes

[![Module version badge](https://img.shields.io/badge/Module-v1.0.0-green)](https://shields.io/)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.0 |
| <a name="provider_kubernetes"></a> [digitalocean](#provider\_kubernetes) | 2.6.0 |
| <a name="provider_kubectl"></a> [digitalocean](#provider\_kubectl) | 1.7.0 |

## Modules
| Name | Description |
|------|---------|
| <a name="module_k8s_cluster_c1"></a> [k8s_cluster_c1](#module\_k8s_cluster_c1) | Deploy Kubernetes Cluster 1 |
| <a name="module_k8s_cluster_c2"></a> [k8s_cluster_c2](#module\_k8s_cluster_c2) | Deploy Kubernetes Cluster 2 |

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.k8s_cluster_c1](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [kubectl_manifest.sockshop](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/kubectl_manifest) | resource |
| [kubectl_manifest.onlineboutique](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/kubectl_manifest) | resource |
| [kubectl_manifest.yelb](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/kubectl_manifest) | resource |
| [digitalocean_project.chaosmonkey](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_token"></a> [digitalocean\_do_token](#input\_digitalocean\_do_token) | Digital Ocean Token to authenticate against the Digital Ocean cli-tool | `string` | n/a | yes |
| <a name="input_clustername_cluster1"></a> [digitalocean\_clustername_cluster1](#input\_digitalocean\_clustername_cluster1) | Name of the kubernetes cluster | `string` | `"k8s-cluter-c1-fra1-1227"` | yes |
| <a name="input_clustername_cluster2"></a> [digitalocean\_clustername_cluster2](#input\_digitalocean\_clustername_cluster2) | Name of the kubernetes cluster | `string` | `"k8s-cluter-c2-fra1-1227"` | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Example usage

### Use the Git-Repository as a module
```hcl
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
```

