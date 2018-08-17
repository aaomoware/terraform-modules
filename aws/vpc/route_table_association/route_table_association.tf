resource "aws_route_table_association" "rt_assoc" {
  count = "${length(var.route_table_id) > 0 ? length(var.route_table_id) : 0}"

  subnet_id      = "${element(var.subnet_id, count.index)}"
  route_table_id = "${element(var.route_table_id, count.index)}"
}
