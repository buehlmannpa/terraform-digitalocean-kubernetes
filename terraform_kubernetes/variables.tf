variable "do_token" {
  type        = string
  sensitive   = true
  description = "API Token to access digitalocean cloud - exported to the env vars of host"
}

variable "region" {
  type        = string
  default     = "fra1"
  description = "VPC regiion where the componentes where deployed"
}

variable "clustername" {
  type        = string
  default     = "k8s-cluter-c1-fra1-1227"
  description = "Name of the kubernetes cluster"
}

variable "nodepoolname" {
  type        = string
  default     = "k8s-nodepool-c1-fra1"
  description = "Name of the kubernetes node pool"
}

variable "autoscale_nodepoolname" {
  type        = string
  default     = "k8s-autoscale-nodepool-c1-fra1"
  description = "Name of the kubernetes node pool"
}
