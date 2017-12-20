output "rt53_zone_association_id" {
  value = "${aws_route53_zone_association.rt53_zone_association.*.id}"
}
