resource "aws_eip" "eip" {
  count = "${length(var.eip_count)}"
  vpc   = "${var.vpc}"
}
