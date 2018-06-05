resource "aws_default_vpc_dhcp_options" "dvdo" {
    tags = "${var.tags}"
    netbios_node_type = "${var.netbios_node_type}"
    netbios_name_servers = "${var.netbios_name_servers}"
}
