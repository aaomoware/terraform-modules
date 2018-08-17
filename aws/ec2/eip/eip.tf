resource "aws_eip" "eip" {
  count = "${var.eip_count}"
  vpc   = "${var.vpc}"
}
