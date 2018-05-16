output "alias_fqdn" {
  value = "${aws_route53_record.alias.*.fqdn}"
}

output "simple_fqdn" {
  value = "${aws_route53_record.simple.*.fqdn}"
}

output "lentacy_fqdn" {
  value = "${aws_route53_record.lentacy.*.fqdn}"
}

output "weighted_fqdn" {
  value = "${aws_route53_record.weighted.*.fqdn}"
}

output "failover_fqdn" {
  value = "${aws_route53_record.failover.*.fqdn}"
}

output "multivalue_fqdn" {
  value = "${aws_route53_record.multivalue.*.fqdn}"
}

output "geo_country_fqdn" {
  value = "${aws_route53_record.geo_country.*.fqdn}"
}

output "geo_continent_fqdn" {
  value = "${aws_route53_record.geo_continent.*.fqdn}"
}
