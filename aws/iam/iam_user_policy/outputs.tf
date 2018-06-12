
output "iam_user_id" {
  value = "${aws_iam_user_policy.iup.id}"
}
output "iam_user_name" {
  value = "${aws_iam_user_policy.iup.name}"
}


output "iam_user_prefix_id" {
  value = "${aws_iam_user_policy.iup_prefix.id}"
}
output "iam_user_prefix_name" {
  value = "${aws_iam_user_policy.iup_prefix.name}"
}
