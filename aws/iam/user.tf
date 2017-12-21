# - users

resource "aws_iam_user" "user" {
  count = "${length(var.iam_user_names) != 0 ? length(var.iam_user_names) : 0}"
  name  = "${element(var.iam_user_names,count.index)}"
  force_destroy = true
}

resource "aws_iam_access_key" "user_access_key" {
  count = "${var.iam_user_gpg_or_keybase == "gpg" || var.iam_user_gpg_or_keybase == "keybase" && var.iam_user_access_key ? length(var.iam_user_names) : 0}"
  user = "${element(aws_iam_user.user.*.name,count.index)}"
  pgp_key = "${var.iam_user_gpg_keybase[element(aws_iam_user.user.*.name,count.index)]}"

  depends_on = ["aws_iam_user.user"]
}

resource "aws_iam_group_membership" "user_group_membership" {
  count = "${length(var.iam_user_group_membership_group) != 0 ? length(var.iam_user_group_membership_group) : 0}"
  name = "${var.iam_user_group_membership_name}"
  users = ["${aws_iam_user.user.*.name}"]
  group = "${element(var.iam_user_group_membership_group,count.index)}"

  depends_on = ["aws_iam_user.user"]
}

resource "aws_iam_user_login_profile" "user_login_profile" {
  count = "${var.iam_user_gpg_or_keybase == "gpg" || var.iam_user_gpg_or_keybase == "keybase" ? length(var.iam_user_names) : 0}"
  user = "${element(aws_iam_user.user.*.name,count.index)}"
  password_length = "${var.iam_user_password_length}"
  password_reset_required = "${var.iam_user_password_reset_required}"
  pgp_key = "${var.iam_user_gpg_keybase[element(aws_iam_user.user.*.name,count.index)]}"

  depends_on = ["aws_iam_user.user","aws_iam_group_membership.user_group_membership"]
}
