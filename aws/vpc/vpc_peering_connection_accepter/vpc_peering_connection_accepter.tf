# Cross-Account VPC Peering Connection
provider "aws" {}
resource "aws_vpc_peering_connection_accepter" "vpc_p_con_acptr" {
  auto_accept               = "${var.auto_accept}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  tags = "${var.tags}"
}
