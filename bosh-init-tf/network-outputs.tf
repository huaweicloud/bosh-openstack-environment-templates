output "internal_cidr" {
  value = "${openstack_networking_subnet_v2.bosh_subnet.cidr}"
}

output "internal_gw" {
  value = "${openstack_networking_subnet_v2.bosh_subnet.gateway_ip}"
}

output "net_dns" {
  value = "[${join(",", openstack_networking_subnet_v2.bosh_subnet.dns_nameservers)}]"
}

output "net_id" {
  value = "${openstack_networking_network_v2.bosh.id}"
}

output "subnet_id" {
  value = "${openstack_networking_subnet_v2.bosh_subnet.id}"
}

output "internal_ip" {
  value = "${cidrhost(openstack_networking_subnet_v2.bosh_subnet.cidr, 10)}"
}

output "router_id" {
  value = "${openstack_networking_router_v2.bosh_router.id}"
}

output "default_security_groups" {
  value = "[${openstack_networking_secgroup_v2.secgroup.name}]"
}
