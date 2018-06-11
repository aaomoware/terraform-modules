resource "aws_acm_certificate_validation" "acv" {
  certificate_arn         = "${var.certificate_arn}"
  validation_record_fqdns = "${var.validation_record_fqdns}"

  timeouts {
    create = "${var.create}"
  }
}
