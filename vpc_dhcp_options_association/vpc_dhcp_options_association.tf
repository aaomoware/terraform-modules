#---VPC DHCP Options Association
resource "aws_vpc_dhcp_options_association" "dhcp_options_association" {
  vpc_id          = "${var.vpc_id}"
  dhcp_options_id = "${var.dhcp_options_id}"
}
