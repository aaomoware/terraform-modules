resource "aws_route_table_association" "rt_assoc" {
  count = "${var.subnet_count}"

  subnet_id      = "${element(var.subnet_id, count.index)}"
  route_table_id = "${var.route_table_id}"
}
