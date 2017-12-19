#-- alias records
resource "aws_route53_record" "alias" {
  count   = "${var.alias ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "A"

  alias {
    name                   = "${var.alias_name}"
    zone_id                = "${var.alias_zone_id}"
    evaluate_target_health = "${var.evaluate_target_health}"
  }
}
