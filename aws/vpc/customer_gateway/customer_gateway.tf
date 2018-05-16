resource "aws_customer_gateway" "cust_gtw" {
  type       = "${var.type}"
  bgp_asn    = "${var.bgp_asn}"
  ip_address = "${var.ip_address}"

  tags = "${var.tags}"
}
