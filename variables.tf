variable "aws_region" {
  description = "AWS region to create the environment"
}

variable "aws_profile" {
  description = "AWS cli profile to use for terraform"
}

variable "instance_type" {}

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

variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
}

variable "cidr_blocks" {
  description = "The CIDR blocks to create the workstations in."
  type        = "list"
}

variable "consul_join_tag_key" {
  description = "The key of the tag to auto-jon on EC2."
}

variable "consul_join_tag_value" {
  description = "The value of the tag to auto-join on EC2."
}

variable "public_key_path" {
  description = "The absolute path on disk to the SSH public key."
}

variable "sg_cidr" {
  description = "The CIDR to lockdown access to Security group ports to"
}

variable "ownerid" {}
variable "virtualization_type" {}
variable "ami_name" {}
variable "channel" {}
