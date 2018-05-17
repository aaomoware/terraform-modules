resource "aws_kms_key" "kk" {

  env                     = "${var.env}"
  policy                  = "${var.policy}"
  key_usage               = "${var.key_usage}"
  is_enabled              = "${var.is_enabled}"
  description             = "${var.description}"
  deletion_window_in_days = "${var.deletion_window_in_days}"

  tags = "${var.tags}"
  }
}
