 #-- failover route records
resource "aws_route53_record" "failover" {
  count   = "${var.failover ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  failover_routing_policy {
    type  = "${var.failover_type}"
  }

  set_identifier = "${var.set_identifier}"
  records        = ["${split(",",var.records)}"]
}
