# Get the list of official Canonical Ubunt 14.04 AMIs
data "aws_ami" "vault" {
  most_recent = true

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["${var.virtualization_type}"]
  }

  filter {
    name   = "name"
    values = ["${var.ami_name}-${var.channel}-*"]
  }

  owners = ["${var.ownerid}"]
}

# Create the user-data for the Consul server
data "template_file" "vault" {
  template = "${file("${path.module}/templates/vault.sh.tpl")}"

  vars {
    vault_version             = "${var.vault_version}"
    vault_token               = "${var.vault_token}"
    consul_server_elb_address = "${var.consul_server_elb_address}"
  }
}
