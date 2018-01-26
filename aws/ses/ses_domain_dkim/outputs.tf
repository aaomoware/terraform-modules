output "sdd_dkim_tokens" {
  value = "${aws_ses_domain_dkim.sdd.dkim_tokens}"
}
