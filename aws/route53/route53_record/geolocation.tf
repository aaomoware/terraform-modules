#-- geolocation route records, country
resource "aws_route53_record" "geo_country" {
  count   = "${var.geo_country ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  geolocation_routing_policy {
    country      = "${var.geolocation}"
  }

  set_identifier = "${var.set_identifier}"
  records        = ["${var.records}"]
}


#-- geolocation route records, continent
resource "aws_route53_record" "geo_continent" {
  count   = "${var.geo_continent ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"

  geolocation_routing_policy {
    country      = "${var.geolocation}"
  }

  set_identifier = "${var.set_identifier}"
  records        = ["${var.records}"]
}
