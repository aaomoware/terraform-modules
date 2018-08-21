resource "aws_dx_hosted_private_virtual_interface_accepter" "dhpvia" {

  tags = "${var.tags}"
  dx_gateway_id = "${var.dx_gateway_id}"
  vpn_gateway_id = "${var.vpn_gateway_id}"
  virtual_interface_id = "${var.virtual_interface_id}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
