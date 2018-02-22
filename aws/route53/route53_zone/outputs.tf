output "zone_ids" {
  value = "${aws_route53_zone.zones.zone_ids}"
}
output "name_servers" {
  value = "${aws_route53_zone.zones.name_servers}"
}
