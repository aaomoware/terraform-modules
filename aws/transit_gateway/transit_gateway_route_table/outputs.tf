output "id" {
  value = "${aws_ec2_transit_gateway_route_table.tgrt.id}"
}

output "default_association_route_table" {
  value = "${aws_ec2_transit_gateway_route_table.tgrt.default_association_route_table}"
}

output "default_propagation_route_table" {
  value = "${aws_ec2_transit_gateway_route_table.tgrt.default_propagation_route_table}"
}
