output "main_rt_assoc_id" {
  value = "${aws_main_route_table_association.main_rt_assoc.id}"
}
output "main_rt_assoc_org_rt_id" {
  value = "${aws_main_route_table_association.main_rt_assoc.original_route_table_id}"
}
