# - roles

resource "aws_iam_role" "iam_role" {
  count = "${length(var.iam_role_name) != 0 ? length(var.iam_role_name) : 0}"
  name = "${element(var.iam_role_name,count.index)}"
  description = "${var.iam_role_description[element(var.iam_role_name,count.index)]}"
  assume_role_policy = "${var.iam_role_assume_role_policy[element(var.iam_role_name,count.index)]}"
  force_detach_policies = "${var.iam_role_force_detach_policies}"
}

resource "aws_iam_role_policy" "iam_role_policy" {
  count = "${length(var.iam_role_policy_name) != 0 ? length(var.iam_role_policy_name) : 0}"
  name = "${element(var.iam_role_policy_name,count.index)}"
  policy = "${var.iam_role_policy_policy[element(var.iam_role_policy_name,count.index)]}"
  role = "${var.iam_role_policy_role[element(var.iam_role_policy_name,count.index)]}"

  depends_on = ["aws_iam_role.iam_role"]
}
