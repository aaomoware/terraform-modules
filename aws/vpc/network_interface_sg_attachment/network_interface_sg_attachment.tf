resource "aws_network_interface_sg_attachment" "nisa" {
  security_group_id    = "${var.security_group_id}"
  network_interface_id = "${var.network_interface}"
}
