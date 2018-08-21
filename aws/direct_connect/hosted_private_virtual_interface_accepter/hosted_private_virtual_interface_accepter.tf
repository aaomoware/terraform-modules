resource "aws_dx_hosted_private_virtual_interface_accepter" "dhpvia" {
  count = "${var.hpvia_count}"

  tags = "${var.tags}"
  vpn_gateway_id = "${var.vpn_gateway_id}"
  virtual_interface_id = "${element(var.virtual_interface_id, count.index)}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
