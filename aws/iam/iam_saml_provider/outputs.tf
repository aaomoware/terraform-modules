output "sp_arn" {
  value = "${aws_iam_saml_provider.sp.arn}"
}
output "sp_valid_until" {
  value = "${aws_iam_saml_provider.sp.valid_until}"
}
