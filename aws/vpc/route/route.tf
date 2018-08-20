#<---generic one-to-one
resource "aws_route" "rt" {
  count = "${var.default ? 1 : 0}"

  gateway_id                = "${element(var.gateway_id, 0)}"
  instance_id               = "${var.instance_id}"
  route_table_id            = "${element(var.route_table_id, 0)}"
  nat_gateway_id            = "${element(var.nat_gateway_id, 0)}"
  network_interface_id      = "${var.network_interface_id}"
  destination_cidr_block    = "${var.destination_cidr_block}"
  egress_only_gateway_id    = "${var.egress_only_gateway_id}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"
}

# ----------
# This is for setting up HA
# For each route table tied to a subet we point to a Nat Gateway in a public subnet
# we can add these routes in a swoop, instead of calling this module for each gateway and nat_gateway route add
# The assumption is here: you are setting up an HA Nat per subnet, private, environment
# For more information see:
#  * https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
#  * https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
#------------
resource "aws_route" "igw" {
    count = "${var.nat_count}"

    gateway_id                = "${element(var.gateway_id, count.index)}"
    route_table_id            = "${element(var.route_table_id, count.index)}"
}
resource "aws_route" "ngw" {
   count = "${var.igw_count}"

   nat_gateway_id            = "${element(var.nat_gateway_id, count.index)}"
   route_table_id            = "${element(var.route_table_id, count.index)}"
}
