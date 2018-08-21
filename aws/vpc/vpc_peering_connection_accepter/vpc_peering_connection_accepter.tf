# Cross-Account VPC Peering Connection
resource "aws_vpc_peering_connection_accepter" "vpc_p_con_acptr" {
  tags = "${var.tags}"
  auto_accept               = "${var.auto_accept}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  accepter {
    allow_remote_vpc_dns_resolution = "${var.accepter_requester["accepter"]}"
  }
  requester {
    allow_remote_vpc_dns_resolution = "${var.accepter_requester["requester"]}"
  }
}
