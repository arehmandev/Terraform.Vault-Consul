# outputs
output "elb_id" {
  value = "${aws_elb.consul.id}"
}

output "elb_name" {
  value = "${aws_elb.consul.name}"
}

output "elb_dns_name" {
  value = "${aws_elb.consul.dns_name}"
}
