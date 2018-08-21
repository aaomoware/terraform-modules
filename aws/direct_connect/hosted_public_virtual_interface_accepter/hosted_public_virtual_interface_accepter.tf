resource "aws_dx_hosted_public_virtual_interface_accepter" "dhpvia" {

  tags = "${var.tags}"
  virtual_interface_id = "${var.virtual_interface_id}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
