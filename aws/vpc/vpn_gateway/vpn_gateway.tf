resource "aws_vpn_gateway" "vpn_gtw" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.availability_zone}"

  tags = "${var.tags}"
}
