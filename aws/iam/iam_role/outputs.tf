output "arn" {
  value = "${element(concat(aws_iam_role.ir.*.arn,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_role.ir.*.name,list("")),0)}"
}
output "unique_id" {
  value = "${element(concat(aws_iam_role.ir.*.unique_id,list("")),0)}"
}
output "create_date" {
  value = "${element(concat(aws_iam_role.ir.*.create_date,list("")),0)}"
}
output "description" {
  value = "${element(concat(aws_iam_role.ir.*.description,list("")),0)}"
}
