resource "aws_network_interface" "ni" {

  subnet_id         = "${var.subnet_id}"
  description       = "${var.description}"
  private_ips       = ["${var.private_ips}"]
  security_groups   = ["${var.security_groups}"]
  private_ips_count = "${var.private_ips_count}"
  source_dest_check = "${var.source_dest_check}"

  attachment {
    instance     = "${var.instance}"
    device_index = "${var.device_index}"
  }
}
