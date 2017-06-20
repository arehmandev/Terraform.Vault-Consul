resource "aws_elb_attachment" "servers" {
  count    = "${length(var.servers_instance_ids)}"
  elb      = "${aws_elb.consul.id}"
  instance = "${element(var.servers_instance_ids, count.index)}"
}

resource "aws_elb_attachment" "clients" {
  count    = "${length(var.clients_instance_ids)}"
  elb      = "${aws_elb.consul.id}"
  instance = "${element(var.clients_instance_ids, count.index)}"
}
