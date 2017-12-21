resource "aws_route53_zone_association" "rt53_zone_association" {
  count = "${length(var.zone_id)}"
  vpc_id  = "${element(var.vpc_id, count.index)}"
  zone_id = "${element(var.zone_id, count.index)}"
}
