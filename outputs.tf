output "consul_servers_loadbalancer_url" {
  value = "${module.ELB.servers_elb_dns_name}:8500/ui"
}

output "consul_clients_loadbalancer_url" {
  value = "${module.ELB.clients_elb_dns_name}:8500/ui"
}

output "servers" {
  value = ["${module.Consul.servers}"]
}

output "clients" {
  value = ["${module.Consul.clients}"]
}

output "vault_server" {
  value = "${module.Vault.vault_ip}"
}
