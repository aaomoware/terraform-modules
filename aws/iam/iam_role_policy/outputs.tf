output "id" {
  value = "${element(concat(aws_iam_group_policy.igp.*.id,list("")),0)}"
}
output "group" {
  value = "${element(concat(aws_iam_group_policy.igp.*.group,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_group_policy.igp.*.name,list("")),0)}"
}
output "policy" {
  value = "${element(concat(aws_iam_group_policy.igp.*.policy,list("")),0)}"
}
