output "rt_id" {
  value = "${var.rt_count > 1 ? aws_route_table.rt_table.*.id : element(concat(aws_route_table.rt_table.*.id,list("")),0)}"
}
