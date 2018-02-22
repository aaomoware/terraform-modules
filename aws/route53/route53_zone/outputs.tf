output "vpc_zone_id" {
  value = "${aws_route53_zone.zones_vpc.zone_id}"
}
output "vpc_name_servers" {
  value = "${aws_route53_zone.zones_vpc.name_servers}"
}


output "set_id_zone_id" {
  value = "${aws_route53_zone.zones_set_id.zone_id}"
}
output "set_id_name_servers" {
  value = "${aws_route53_zone.zones_set_id.name_servers}"
}
