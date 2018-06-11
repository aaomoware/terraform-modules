output "id" {
  value = "${aws_acm_certificate.ac.id}"
}
output "arn" {
  value = "${aws_acm_certificate.ac.arn}"
}
output "validation_emails" {
  value = "${aws_acm_certificate.ac.validation_emails}"
}

output "domain_validation_options_name" {
  value = "${aws_acm_certificate.ac.domain_validation_options.domain_name}"
}
output "domain_validation_options_record_name" {
  value = "${aws_acm_certificate.ac.domain_validation_options.resource_record_name}"
}
output "domain_validation_options_record_type" {
  value = "${aws_acm_certificate.ac.domain_validation_options.resource_record_type}"
}
output "domain_validation_options_record_value" {
  value = "${aws_acm_certificate.ac.domain_validation_options.resource_record_value}"
}
