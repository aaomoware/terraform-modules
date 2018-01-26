resource "aws_ses_domain_identity" "sdi" {
  domain = "${var.domain}"
}
