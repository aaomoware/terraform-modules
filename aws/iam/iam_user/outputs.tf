output "arn" {
  value = "${aws_iam_user.iu.*.arn}"
}
output "name" {
  value = "${aws_iam_user.iu.*.name}"
}
output "unique_id" {
  value = "${aws_iam_user.iu.*.unique_id}"
}
