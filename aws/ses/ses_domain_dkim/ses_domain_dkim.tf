resource "aws_ses_domain_dkim" "sdd" {
  domain = "${var.domain}"
}
