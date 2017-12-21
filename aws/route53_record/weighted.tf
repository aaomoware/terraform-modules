#-- weighted route policy
resource "aws_route53_record" "weighted" {
  count   = "${var.weighted ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  weighted_routing_policy {
    weight = "${var.weight}"
  }

  records         = ["${split(",",var.records)}"]
  set_identifier  = "${var.set_identifier}"
  health_check_id = "${var.health_check_id}"
}
