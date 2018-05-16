#-- alias records
resource "aws_route53_record" "alias" {
  count   = "${var.alias ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"

  alias = "${var.tags}"
}
