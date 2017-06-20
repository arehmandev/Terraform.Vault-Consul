variable "instance_type" {
  default = "t2.micro"
}

variable "vault_version" {
  default = "0.7.3"
}

variable "vault_token" {}

variable "vault_instance_name" {
  default = "Vault-server"
}

variable "consul_server_elb_address" {}

variable "consul_subnets" {
  description = "The subnets for the Consul cluster"
  type        = "list"
}

variable "key_name" {
  description = "The name of the keypair to be use for the Consul cluster"
}

variable "consul_instance_profile" {
  description = "The IAM instance profile for the Consul instances"
}

variable "consul_securitygroup_id" {
  description = "The security group id for the Consul cluster's security group"
}

variable "namespace" {
  description = "The namespace (tag) of the components created in AWS"
}

variable "ownerid" {}
variable "virtualization_type" {}
variable "ami_name" {}
variable "channel" {}
