resource "aws_kms_alias" "ka" {
  name          = "${var.name}"
  target_key_id = "${var.target_key_id}"
}

resource "aws_kms_alias" "ka_prefix" {
  count          = "${var.name_prefix ? 1 : 0}"
  name_prefix    = "${var.name}"
  target_key_id  = "${var.target_key_id}"

  lifecycle {
    create_before_destroy = true
  }
}
