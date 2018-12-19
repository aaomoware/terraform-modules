resource "aws_efs_mount_target" "emt" {
  count           = "${var.target_count > 0 ? var.target_count : 0}"

  subnet_id       = "${element(var.subnet_id, count.index)}"
  ip_address      = "${var.ip_address}"
  file_system_id  = "${var.file_system_id}"
  security_groups = ["${var.security_groups}"]
}
