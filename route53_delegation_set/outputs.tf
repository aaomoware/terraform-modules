output "rt53_d_set_zone_id" {
  value = "${aws_route53_delegation_set.route53_delegation_set.*.zone_id}"
}

output "rt53_d_set_name_servers" {
  value = "${aws_route53_delegation_set.route53_delegation_set.*.name_servers}"
}
