output "consul_servers_loadbalancer" {
  value = "${module.ELB.servers_elb_dns_name}"
}

output "consul_clients_loadbalancer" {
  value = "${module.ELB.clients_elb_dns_name}"
}

output "servers" {
  value = ["${module.Consul.servers}"]
}

output "clients" {
  value = ["${module.Consul.clients}"]
}
