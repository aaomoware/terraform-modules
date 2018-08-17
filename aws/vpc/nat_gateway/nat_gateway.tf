resource "aws_nat_gateway" "nat_gtw" {
  count         = "${var.sub_count > 0 ? var.sub_count : 0}"

  subnet_id     = "${element(var.subnet_id, count.index)}"
  allocation_id = "${element(var.allocation_id, count.index)}"
}
