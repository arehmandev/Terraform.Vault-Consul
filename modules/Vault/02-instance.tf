resource "aws_instance" "vault" {
  ami           = "${data.aws_ami.vault.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"

  subnet_id              = "${element(var.consul_subnets, count.index)}"
  iam_instance_profile   = "${var.consul_instance_profile}"
  vpc_security_group_ids = ["${var.consul_securitygroup_id}"]

  tags {
    Name = "${var.vault_instance_name}"
  }

  user_data = "${data.template_file.vault.rendered}"
}
