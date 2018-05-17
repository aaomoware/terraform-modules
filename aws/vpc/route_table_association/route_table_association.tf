resource "aws_route_table_association" "rt_assoc" {
  count          = "${var.route_table_id}"
  subnet_id      = "${var.subnet_id}"
  route_table_id = "${element(var.route_table_id, count.index)}"
}
