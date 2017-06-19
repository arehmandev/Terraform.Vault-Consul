output "consul_vpc_id" {
  value = "${aws_vpc.consul.id}"
}

output "consul_subnets" {
  value = ["${aws_subnet.consul.*.id}"]
}
