output "servers" {
  value = ["${aws_instance.server.*.public_ip}"]
}

output "servers_ids" {
  value = ["${aws_instance.server.*.id}"]
}

output "clients" {
  value = ["${aws_instance.client.*.public_ip}"]
}

output "clients_ids" {
  value = ["${aws_instance.client.*.id}"]
}
