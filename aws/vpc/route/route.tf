#<---generic one-to-one
resource "aws_route" "rt" {
  count = "${var.default ? 1 : 0}"

  gateway_id                = "${element(var.gateway_id, length(var.gateway_id))}"
  instance_id               = "${var.instance_id}"
  route_table_id            = "${var.route_table_id}"
  nat_gateway_id            = "${element(var.nat_gateway_id, length(var.nat_gateway_id)}"
  network_interface_id      = "${var.network_interface_id}"
  destination_cidr_block    = "${var.destination_cidr_block}"
  egress_only_gateway_id    = "${var.egress_only_gateway_id}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"
}

# ----------
# for lists of gateways and nat_gateway ids.
# we can add these routes in a swoop, instead of calling this module for each gateway and nat_gateway route add
#------------
resource "aws_route" "rt_gn" {
  count = "${!var.default && length(var.gateway_id) > 0 ? length(var.gateway_id) : length(var.nat_gateway_id)}"

  gateway_id                = "${element(var.gateway_id, count.index)}"
  route_table_id            = "${var.route_table_id}"
  nat_gateway_id            = "${element(var.nat_gateway_id, count.index)}"
}
