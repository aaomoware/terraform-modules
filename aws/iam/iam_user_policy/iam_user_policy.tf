# - user policy

resource "aws_iam_user_policy" "user_name" {
  count  = "${var.prefix ? 0 : 1}"
  name   = "${var.name}"
  user   = "${var.user}"
  policy = "${var.user_policy}"
}

resource "aws_iam_user_policy" "user_prefix" {
  count         = "${var.prefix ? 1 : 0}"
  user          = "${var.user}"
  policy        = "${var.user_policy}"
  name_prefix   = "${var.name_prefix}"
}
