output "ka_arn" {
  value = "${aws_kms_alias.ka.arn}"
}
output "ka_prefix_arn" {
  value = "${aws_kms_alias.ka_prefix.arn}"
}
