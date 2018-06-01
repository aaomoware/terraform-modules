resource "aws_kms_key" "kk" {

  policy                  = "${var.policy}"
  key_usage               = "${var.key_usage}"
  is_enabled              = "${var.is_enabled}"
  description             = "${var.description}"
  enable_key_rotation     = "${var.enable_key_rotation}"
  deletion_window_in_days = "${var.deletion_window_in_days}"

  tags = "${var.tags}"
}
