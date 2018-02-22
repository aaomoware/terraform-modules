output "zone_id" {
  value = "${aws_route53_zone.zones.zone_id}"
}
output "name_servers" {
  value = "${aws_route53_zone.zones.name_servers}"
}
