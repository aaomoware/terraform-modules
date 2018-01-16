output "kk_arn" {
  value = "${aws_kms_key.kk.arn}"
}
output "kk_key_id" {
  value = "${aws_kms_key.kk.key_id}"
}
