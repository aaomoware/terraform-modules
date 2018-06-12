resource "aws_iam_group_policy_attachment" "igpa" {
  count = "${length(var.arns) != 0 ? length(var.arns) : 0}"
  group = "${var.groups[element(var.arns,count.index)]}"
  policy_arn = "${element(var.arns,count.index)}"
}
