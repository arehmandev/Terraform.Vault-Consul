# outputs
output "servers_elb_id" {
  value = "${aws_elb.consul_servers.id}"
}

output "servers_elb_name" {
  value = "${aws_elb.consul_servers.name}"
}

output "servers_elb_dns_name" {
  value = "${aws_elb.consul_servers.dns_name}"
}

output "clients_elb_id" {
  value = "${aws_elb.consul_clients.id}"
}

output "clients_elb_name" {
  value = "${aws_elb.consul_clients.name}"
}

output "clients_elb_dns_name" {
  value = "${aws_elb.consul_clients.dns_name}"
}
