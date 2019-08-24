resource "aws_iam_role_policy_attachment" "irpa" {
  count = "${length(var.role)}"

  role       = "${element(var.role, count.index)}"
  policy_arn = "${element(var.policy_arn, count.index)}"
}
