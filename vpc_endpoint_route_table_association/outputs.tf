output "rt_table_assoc_id" {
  value = "${aws_vpc_endpoint_route_table_association.rt_table_assoc.*.id}"
}
