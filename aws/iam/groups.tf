# - groups

resource "aws_iam_group" "iam_group" {
  count = "${length(var.iam_group_names) != 0 ? length(var.iam_group_names) : 0}"
  name = "${element(var.iam_group_names,count.index)}"
  path = "${length(values(var.iam_group_path)) != 0 ? var.iam_group_path[element(var.iam_group_names,count.index)] : "/" }"
}

resource "aws_iam_group_policy" "iam_group_policy" {
  count = "${length(var.iam_group_policy_names) != 0 ? length(var.iam_group_policy_names) : 0}"
  name = "${element(var.iam_group_policy_names,count.index)}"
  group = "${var.iam_group_policy_groups[element(var.iam_group_policy_names,count.index)]}"
  policy = "${var.iam_group_policy_policy[element(var.iam_group_policy_names,count.index)]}"

  depends_on = ["aws_iam_group.iam_group"]
}

resource "aws_iam_group_policy_attachment" "iam_group_policy_attachment" {
  count = "${length(var.iam_group_policy_attachment_arn) != 0 ? length(var.iam_group_policy_attachment_arn) : 0}"
  group = "${var.iam_group_policy_attachment_group[element(var.iam_group_policy_attachment_arn,count.index)]}"
  policy_arn = "${element(var.iam_group_policy_attachment_arn,count.index)}"

  depends_on = ["aws_iam_group.iam_group"]
}
