output "servers" {
  value = ["${module.Consul.servers}"]
}

output "clients" {
  value = ["${module.Consul.clients}"]
}

output "loadbalancer" {
  value = "${module.ELB.elb_dns_name}"
}
