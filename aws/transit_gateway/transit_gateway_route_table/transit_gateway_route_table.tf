resource "aws_ec2_transit_gateway_route_table" "tgrt" {
  tags               = "${var.tags}"
  transit_gateway_id = "${var.transit_gateway_id}"
}
