output "vault" {
  value = ["${aws_instance.vault.public_ip}"]
}

output "servers_ids" {
  value = ["${aws_instance.vault.id}"]
}
