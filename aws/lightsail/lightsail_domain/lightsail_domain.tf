resource "aws_lightsail_domain" "ld" {
  count       = "${length(var.domain_name)}"
  domain_name = "${element(var.domain_name, count.index)}"
}
