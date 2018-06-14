output "id" {
  value = "${element(concat(aws_iam_user_policy.iup.*.id,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_user_policy.iup.*.name,list("")),0)}"
}

output "id_prefix" {
  value = "${element(concat(aws_iam_user_policy.iup_prefix.*.id,list("")),0)}"
}
output "name_prefix" {
  value = "${element(concat(aws_iam_user_policy.iup_prefix.*.id,list("")),0)}"
}
