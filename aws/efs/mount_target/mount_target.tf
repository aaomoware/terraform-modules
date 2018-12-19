resource "aws_efs_mount_target" "emt" {
  subnet_id       = "${var.subnet_id}"
  ip_address      = "${var.ip_address}"
  file_system_id  = "${var.file_system_id}"
  security_groups = "${var.security_groups}"
}
