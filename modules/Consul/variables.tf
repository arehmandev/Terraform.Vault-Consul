variable "instance_type" {
  default = "t2.micro"
}

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

variable "servers" {
  description = "The number of consul servers."
}

variable "clients" {
  description = "The number of consul client instances"
}

variable "consul_version" {
  description = "The version of Consul to install (server and client)."
}

variable "consul_join_tag_key" {
  description = "The key of the tag to auto-join on EC2."
}

variable "consul_join_tag_value" {
  description = "The value of the tag to auto-join on EC2."
}

variable "ownerid" {}
variable "virtualization_type" {}
variable "ami_name" {}
variable "channel" {}
variable "vault_token" {}
