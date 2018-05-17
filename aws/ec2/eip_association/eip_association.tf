resource "aws_eip_association" "eip_assoc" {

  public_ip            = "${var.public_ip}"
  instance_id          = "${var.instance_id}"
  allocation_id        = "${var.allocation_id}"
  private_ip_address   = "${var.private_ip_address}"
  allow_reassociation  = "${var.allow_reassociation}"
  network_interface_id = "${var.network_interface_id}"
}
