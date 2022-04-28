variable "clustername_cluster1" {
  type        = string
  default     = "k8s-cluter-c1-fra1-1227"
  description = "Name of the kubernetes cluster"
}

variable "clustername_cluster2" {
  type        = string
  default     = "k8s-cluter-c2-fra1-1227"
  description = "Name of the kubernetes cluster"
}

variable "do_token" {
  type        = string
  sensitive   = true
  description = "API Token to access digitalocean cloud - exported to the env vars of host"
}
