variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
}

variable "namespace" {
  description = "The namespace (tag) of the components created in AWS"
}

variable "cidr_blocks" {
  type        = "list"
  description = "The CIDR blocks to create the workstations in."
}
