output "vpc_zone_id" {
  value = "${element(concat(aws_route53_zone.zones_vpc.*.zone_id, list("")), 0)}"
}
output "vpc_name_servers" {
  value = "${aws_route53_zone.zones_vpc.*.name_servers}"
}

output "set_id_zone_id" {
  value = "${element(concat(aws_route53_zone.zones_set_id.*.zone_id, list("")), 0)}"
}
output "set_id_name_servers" {
  value = "${aws_route53_zone.zones_set_id.*.name_servers}"
}
