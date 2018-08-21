resource "aws_dx_gateway_association" "dga" {
  dx_gateway_id = "${var.dx_gateway_id}"
  vpn_gateway_id = "${var.vpn_gateway_id}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
