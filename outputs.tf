output "Disclaimer" {
  value = "Please wait a minute or so before going to the UI urls listed below"
}

output "loadbalancer_url_consul_servers" {
  value = "${module.ELB.servers_elb_dns_name}:8500/ui"
}

output "loadbalancer_url_consul_clients" {
  value = "${module.ELB.clients_elb_dns_name}:8500/ui"
}

output "ip_of_consul_servers" {
  value = ["${module.Consul.servers}"]
}

output "ip_of_consul_clients" {
  value = ["${module.Consul.clients}"]
}

output "ip_of_vault_server" {
  value = "${module.Vault.vault_ip}"
}
