#-- lentacy route records
resource "aws_route53_record" "multivalue" {
  count   = "${var.multivalue ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  multivalue_answer_routing_policy {
  }

  set_identifier = "${var.set_identifier}"
  records        = ["${var.records}"]
}
