output "vault_ip" {
  value = ["${aws_instance.vault.public_ip}"]
}

output "instance_id" {
  value = ["${aws_instance.vault.id}"]
}
