resource "aws_dx_gateway_association" "dga" {
  dx_gateway_id = "${var.dx_gateway_id}"
  vpn_gateway_id = "${var.vpn_gateway_id}"

  timeout {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
