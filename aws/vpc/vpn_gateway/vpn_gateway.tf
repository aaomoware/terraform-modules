resource "aws_vpn_gateway" "vpn_gtw" {
  tags = "${var.tags}"
  vpc_id = "${var.vpc_id}"
  amazon_side_asn = "${var.amazon_side_asn}"
}
