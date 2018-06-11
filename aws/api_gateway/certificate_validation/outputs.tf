output "certificate_arn" {
  value = "${aws_acm_certificate_validation.acv.certificate_arn}"
}
output "validation_record_fqdns" {
  value = "${aws_acm_certificate_validation.acv.validation_record_fqdns}"
}
