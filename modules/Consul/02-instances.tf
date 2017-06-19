# Create the Consul cluster
resource "aws_instance" "server" {
  count = "${var.servers}"

  ami           = "${data.aws_ami.ubuntu-1404.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"

  subnet_id              = "${element(var.consul_subnets, count.index)}"
  iam_instance_profile   = "${var.consul_instance_profile}"
  vpc_security_group_ids = ["${var.consul_securitygroup_id}"]

  tags = "${map(
    "Name", "${var.namespace}-server-${count.index}",
    var.consul_join_tag_key, var.consul_join_tag_value
  )}"

  user_data = "${element(data.template_file.server.*.rendered, count.index)}"
}

resource "aws_instance" "client" {
  count = "${var.clients}"

  ami           = "${data.aws_ami.ubuntu-1404.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"

  subnet_id              = "${element(var.consul_subnets, count.index)}"
  iam_instance_profile   = "${var.consul_instance_profile}"
  vpc_security_group_ids = ["${var.consul_securitygroup_id}"]

  tags = "${map(
    "Name", "${var.namespace}-client-${count.index}",
    var.consul_join_tag_key, var.consul_join_tag_value
  )}"

  user_data = "${element(data.template_file.client.*.rendered, count.index)}"
}
