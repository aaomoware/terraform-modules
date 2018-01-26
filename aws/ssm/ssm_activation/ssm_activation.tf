resource "aws_ssm_activation" "ssma" {
  name               = "${var.name}"
  iam_role           = "${var.iam_role}"
  description        = "${var.description}"
  expiration_date    = "${var.expiration_date}"
  registration_limit = "${var.registration_limit}"
}
