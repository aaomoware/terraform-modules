#-- lentacy route records
resource "aws_route53_record" "lentacy" {
  count   = "${var.lentacy ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  latency_routing_policy {
    region = "${var.lentacy_region}"
  }

  set_identifier = "${var.set_identifier}"
  records        = ["${split(",",var.records)}"]
}
