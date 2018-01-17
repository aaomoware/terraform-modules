resource "aws_inspector_assessment_target" "iat" {
  name               = "${var.name}"
  resource_group_arn = "${var.resource_group_arn}"
}
