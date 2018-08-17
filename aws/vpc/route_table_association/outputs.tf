output "rt_assoc_id" {
  value = "${length(var.rt_count) > 1 ? aws_route_table_association.rt_assoc.*.id : element(concat(aws_route_table_association.rt_assoc.*.id,list("")),0)}"
}
