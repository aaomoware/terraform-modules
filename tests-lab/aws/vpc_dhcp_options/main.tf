module "dns" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "dns"
  domain_name          = "on.venus"
  domain_name_servers  = ["192.168.1.5","192.168.1.6"]
}

module "ntp" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "ntp"
  ntp_servers          = ["192.168.1.4"]
}

module "netbios" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "netbios"
  netbios_name_servers = ["192.168.1.3"]
}

module "ntp_dns" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "ntp_dns"
  ntp_servers          = ["192.168.1.4"]
  domain_name_servers  = ["192.168.1.5","192.168.1.6"]
}

module "ntp_dns_netbios" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "ntp_dns_netbios"
  ntp_servers          = ["192.168.1.4"]
  domain_name_servers  = ["192.168.1.5","192.168.1.6"]
  netbios_name_servers = ["192.168.1.3","192.168.1.113"]
}

module "all_options" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/vpc_dhcp_options"

  name                 = "all_options"
  domain_name          = "on.venus"
  ntp_servers          = ["192.168.1.4"]
  netbios_node_type    = 2
  domain_name_servers  = ["192.168.1.5","192.168.1.6"]
  netbios_name_servers = ["192.168.1.3","192.168.1.113"]
}
