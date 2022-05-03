# terraform_kubernetes

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

No modules.

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
| <a name="input_region"></a> [digitalocean\_region](#input\_digitalocean\_region) | VPC regiion where the componentes where deployed | `string` | `"fra1"` | yes |
| <a name="input_clustername"></a> [digitalocean\_clustername](#input\_digitalocean\_clustername) | Name of the kubernetes cluster | `string` | `"k8s-cluter-c1-fra1-1227"` | no |
| <a name="input_nodepoolname"></a> [digitalocean\_nodepoolname](#input\_digitalocean\_nodepoolname) | Name of the kubernetes node pool | `string` | `"k8s-nodepool-c1-fra1"` | no |
| <a name="input_autoscale_nodepoolname"></a> [digitalocean\_autoscale_nodepoolname](#input\_digitalocean\_autoscale_nodepoolname) | Name of the kubernetes node pool | `string` | `"k8s-autoscale-nodepool-c1-fra1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Example usage

### Execute the Git-Repository via terraform on the command line
```bash
git clone https://github.com/buehlmannpa/terraform-digitalocean-kubernetes
cd terraform-digitalocean-chaosmonkey/terraform_kubernetes
terraform apply -auto-approve
```

### Use the Git-Repository as a module
```hcl
module "terraform-digitalocean-kubernetes" {
  source      = "git::ssh://git@github.com/buehlmannpa/terraform-digitalocean-kubernetes.git?ref=main"

  do_token    = var.collectord_license_key
  region      = var.region
  clustername = var.hostname
}
```

