#- Group
output "iam_group_name" {
  value = "${aws_iam_group.iam_group.*.name}"
}

output "iam_group_policy_name" {
  value = "${aws_iam_group_policy.iam_group_policy.*.name}"
}
