resource "aws_ec2_transit_gateway_vpc_attachment" "tgva" {
  tags                                            = "${var.tags}"
  vpc_id                                          = "${var.vpc_id}"
  subnet_ids                                      = "${var.subnet_ids}"
  dns_support                                     = "${var.dns_support}"
  ipv6_support                                    = "${var.ipv6_support}"
  transit_gateway_id                              = "${var.transit_gateway_id}"
  transit_gateway_default_route_table_association = "${var.transit_gateway_default_route_table_association}"
  transit_gateway_default_route_table_propagation = "${var.transit_gateway_default_route_table_propagation}"
}
