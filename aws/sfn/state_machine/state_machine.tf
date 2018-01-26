resource "aws_sfn_state_machine" "ssm" {
  name       = "${var.name}"
  role_arn   = "${var.role_arn}"
  definition = "${var.definition}"
}
