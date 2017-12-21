output "vpc_edp_rt_t_assoc_id" {
  value = "${aws_vpc_endpoint_route_table_association.vpc_endpoint_rt_table_assoc.*.id}"
}
