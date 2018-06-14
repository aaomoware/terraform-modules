output "arn" {
  value = "${aws_iam_role.ir.*.arn}"
}
output "name" {
  value = "${aws_iam_role.ir.*.name}"
}
output "unique_id" {
  value = "${aws_iam_role.ir.*.unique_id}"
}
output "create_date" {
  value = "${aws_iam_role.ir.*.create_date}"
}
output "description" {
  value = "${aws_iam_role.ir.*.description}"
}
