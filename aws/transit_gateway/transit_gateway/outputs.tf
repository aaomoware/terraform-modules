output "arn" {
  value = "${aws_ec2_transit_gateway.etg.arn}"
}

output "id" {
  value = "${aws_ec2_transit_gateway.etg.id}"
}

output "owner_id" {
  value = "${aws_ec2_transit_gateway.etg.owner_id}"
}

output "association_default_route_table_id" {
  value = "${aws_ec2_transit_gateway.etg.association_default_route_table_id}"
}

output "propagation_default_route_table_id" {
  value = "${aws_ec2_transit_gateway.etg.propagation_default_route_table_id}"
}
