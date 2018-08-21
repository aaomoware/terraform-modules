resource "aws_vpc_peering_connection_options" "requester" {
  count = "${var.requester ? 1 : 0}"

  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  requester {
    allow_remote_vpc_dns_resolution = "${var.requester}"
  }
}

resource "aws_vpc_peering_connection_options" "accepter" {
  count = "${var.accepter ? 1 : 0}"

  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  accepter {
    allow_remote_vpc_dns_resolution = "${var.accepter}"
  }
}
