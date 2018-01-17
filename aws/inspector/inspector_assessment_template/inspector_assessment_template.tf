resource "aws_inspector_assessment_template" "iat" {
  name       = "${var.name}"
  target_arn = "${var.target_arn}"
  duration   = "${var.duration}"

  rules_package_arns = ["${var.rules_package_arns}"]
}
