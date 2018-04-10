
output "iam_user_id" {
  value = "${aws_iam_user_policy.user_name.id}"
}
output "iam_user_name" {
  value = "${aws_iam_user_policy.user_name.name}"
}


output "iam_user_prefix_id" {
  value = "${aws_iam_user_policy.user_prefix.id}"
}
output "iam_user_prefix_name" {
  value = "${aws_iam_user_policy.user_prefix.name}"
}
