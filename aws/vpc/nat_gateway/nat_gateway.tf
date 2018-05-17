resource "aws_nat_gateway" "nat_gtw" {
  subnet_id     = "${var.subnet_id}"
  allocation_id = "${var.allocation_id}"

  tags = "${var.tags}"
}
