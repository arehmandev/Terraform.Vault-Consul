output "servers" {
  value = ["${module.Consul.servers}"]
}

output "clients" {
  value = ["${module.Consul.clients}"]
}
