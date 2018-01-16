resource "aws_vpc_peering_connection" "vpc_peering_conn" {
  vpc_id        = "${var.vpc_id}"
  auto_accept   = "${var.auto_accept}"
  peer_vpc_id   = "${var.peer_vpc_id}"
  peer_owner_id = "${var.peer_owner_id}"

  accepter {
    allow_remote_vpc_dns_resolution = "${var.accepter_requester['accepter']}"
  }

  requester {
    allow_remote_vpc_dns_resolution = "${var.accepter_requester['requester']}"
  }

  tags {
    Env = "${var.env}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
