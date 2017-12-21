resource "aws_vpc_endpoint_route_table_association" "rt_table_assoc" {
  count = "${length(var.vpc_endpoint_id)}"
  vpc_endpoint_id = "${element(var.vpc_endpoint_id ,count.index)}"
  route_table_id  = "${element(var.route_table_id, count.index)}"
}
