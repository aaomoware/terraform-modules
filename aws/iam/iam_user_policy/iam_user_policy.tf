# - user policy

resource "aws_iam_user_policy" "user_name" {
  count  = "${var.prefix ? 0 : 1}"
  name   = "${var.iam_user_policy_name}"
  user   = "${var.iam_user_policy_user}"
  policy = "${var.iam_user_policy_policy}"
}

resource "aws_iam_user_policy" "user_prefix" {
  count         = "${var.prefix ? 1 : 0}"
  user          = "${var.iam_user_policy_user}"
  policy        = "${var.iam_user_policy_policy}"
  name_prefix   = "${var.iam_user_policy_name_prefix}"
}
