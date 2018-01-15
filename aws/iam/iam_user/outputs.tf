# - Users
output "iam_user_arn" {
  value = "${aws_iam_user.user.*.arn}"
}

output "iam_user_name" {
  value = "${aws_iam_user.user.*.name}"
}

output "iam_user_login_profile_password" {
  value = "${join(",",aws_iam_user_login_profile.user_login_profile.*.encrypted_password)}"
}

#-
output "iam_user_access_key_id" {
  value = "${aws_iam_access_key.user_access_key.*.id}"
}

output "iam_user_access_key_user" {
  value = "${aws_iam_access_key.user_access_key.*.user}"
}

output "iam_user_access_secret" {
  value = "${aws_iam_access_key.user_access_key.*.encrypted_secret}"
}

#-
output "iam_user_group_membership_group_name" {
  value = "${aws_iam_group_membership.user_group_membership.*.user}"
}

output "iam_user_group_membership_group_users" {
  value = "${aws_iam_group_membership.user_group_membership.*.user}"
}

output "iam_user_group_membership_group_group" {
  value = "${aws_iam_group_membership.user_group_membership.*.group}"
}
