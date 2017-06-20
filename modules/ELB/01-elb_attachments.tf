resource "aws_elb_attachment" "servers" {
  count    = "${var.servers}"
  elb      = "${aws_elb.consul_servers.id}"
  instance = "${element(var.servers_instance_ids, count.index)}"
}

resource "aws_elb_attachment" "clients" {
  count    = "${var.clients}"
  elb      = "${aws_elb.consul_clients.id}"
  instance = "${element(var.clients_instance_ids, count.index)}"
}
