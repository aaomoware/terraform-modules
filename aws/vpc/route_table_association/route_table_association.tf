resource "aws_route_table_association" "rt_assoc" {
  count = "${length(var.subnet_id, count.index)}"

  subnet_id      = "${element(var.subnet_id, count.index)}"
  route_table_id = "${element(var.route_table_id, count.index)}"
}
