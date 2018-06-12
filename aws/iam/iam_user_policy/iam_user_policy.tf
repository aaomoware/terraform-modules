resource "aws_iam_user_policy" "iup" {
  count  = "${var.prefix ? 0 : 1}"
  name   = "${var.name}"
  user   = "${var.user}"
  policy = "${var.policy}"
}

resource "aws_iam_user_policy" "iup_prefix" {
  count         = "${var.prefix ? 1 : 0}"
  user          = "${var.user}"
  policy        = "${var.policy}"
  name_prefix   = "${var.name_prefix}"
}
