resource "aws_route53_zone" "zones" {
  count = "${length(var.names)}"
  name = "${element(var.names, count.index)}"
}
