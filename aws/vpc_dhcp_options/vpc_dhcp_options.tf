resource "aws_vpc_dhcp_options" "dhcp_options" {
  domain_name          = "${var.domain_name}"
  domain_name_servers  = ["${var.domain_name_servers}"]
  ntp_servers          = ["${var.ntp_servers}"]
  netbios_name_servers = ["${var.netbios_name_servers}"]
  netbios_node_type    = "${var.netbios_node_type}"

  tags {
    Name = "${var.name}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
