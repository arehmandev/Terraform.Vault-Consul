# Create a VPC to launch our instances into
resource "aws_vpc" "consul" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_hostnames = true

  tags {
    "Name" = "${var.namespace}"
  }
}

# Create an internet gateway to give our subnet access to the outside world
resource "aws_internet_gateway" "consul" {
  vpc_id = "${aws_vpc.consul.id}"

  tags {
    "Name" = "${var.namespace}"
  }
}

# Grant the VPC internet access on its main route table
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.consul.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.consul.id}"
}
