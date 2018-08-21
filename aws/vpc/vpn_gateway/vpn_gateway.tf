resource "aws_vpn_gateway" "vpn_gtw" {
  tags = "${var.tags}"
  vpc_id = "${var.vpc_id}"s
}
