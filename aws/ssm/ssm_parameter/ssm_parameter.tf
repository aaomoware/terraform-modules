resource "aws_ssm_parameter" "ssmp" {
  name      = "${var.name}"
  type      = "${var.type}"
  value     = "${var.value}"
  key_id    = "${var.key_id}"
  overwrite = "${var.overwrite}"
}
