resource "aws_iam_policy" "ip" {
  name        = "${var.name}"
  path        = "${var.path}"
  policy      = "${var.policy}"
  description = "${var.description}"
}
