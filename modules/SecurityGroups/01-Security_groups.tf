# A security group that makes the instances accessible
resource "aws_security_group" "consul" {
  name_prefix = "${var.namespace}"
  vpc_id      = "${var.consul_vpc}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.sg_cidr}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.sg_cidr}"]
  }
}
