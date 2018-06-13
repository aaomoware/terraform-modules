output "id" {
  value = "${element(concat(aws_iam_group_policy.irp.*.id,list("")),0)}"
}
output "group" {
  value = "${element(concat(aws_iam_group_policy.irp.*.group,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_group_policy.irp.*.name,list("")),0)}"
}
output "policy" {
  value = "${element(concat(aws_iam_group_policy.irp.*.policy,list("")),0)}"
}
