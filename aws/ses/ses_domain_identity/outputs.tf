output "sdi_arn" {
  value = "${aws_ses_domain_identity.sdi.arn}"
}
output "sdi_verification_token" {
  value = "${aws_ses_domain_identity.sdi.verification_token }"
}
