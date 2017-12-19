#--simple record
resource "aws_route53_record" "simple" {
  count   = "${var.simple ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.records}"]
}
