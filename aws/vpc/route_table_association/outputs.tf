output "rt_assoc_id" {
  value = "${element(concat(aws_route_table_association.rt_assoc.*.id,list("")),0)}"
}
