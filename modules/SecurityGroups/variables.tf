variable "namespace" {
  description = "The namespace (tag) of the components created in AWS"
}

variable "sg_cidr" {
  description = "The CIDR to lockdown access to Security group ports to"
}

variable "consul_vpc" {
  description = "The VPC of the consul cluster"
}
