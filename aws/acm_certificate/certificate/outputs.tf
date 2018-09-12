output "id" {
  value = "${aws_acm_certificate.ac.id}"
}
output "arn" {
  value = "${aws_acm_certificate.ac.arn}"
}
output "validation_emails" {
  value = "${aws_acm_certificate.ac.validation_emails}"
}
