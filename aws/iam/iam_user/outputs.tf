output "arn" {
  value = "${element(concat(aws_iam_user.iu.*.arn,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_user.iu.*.name,list("")),0)}"
}
output "unique_id" {
  value = "${element(concat(aws_iam_user.iu.*.unique_id,list("")),0)}"
}
