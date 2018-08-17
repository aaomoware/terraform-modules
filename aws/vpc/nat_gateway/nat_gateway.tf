resource "aws_nat_gateway" "nat_gtw" {
  count         = "${length(var.allocation_id)}"

  subnet_id     = "${element(var.subnet_id, count.index)}"
  allocation_id = "${element(var.allocation_id, count.index)}"
}
