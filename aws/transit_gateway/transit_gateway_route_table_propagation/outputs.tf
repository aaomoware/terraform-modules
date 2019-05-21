output "id" {
  value = "${aws_ec2_transit_gateway_route_table_association.tgrta.id}"
}

output "resource_id" {
  value = "${aws_ec2_transit_gateway_route_table_association.tgrta.resource_id}"
}

output "resource_type" {
  value = "${aws_ec2_transit_gateway_route_table_association.tgrta.resource_type}"
}
