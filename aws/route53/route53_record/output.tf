output "alias_fqdn" {
  value = "${aws_route53_zone.alias.fqdn}"
}

output "simple_fqdn" {
  value = "${aws_route53_zone.simple.fqdn}"
}

output "weighted_fqdn" {
  value = "${aws_route53_zone.weighted.fqdn}"
}

output "lentacy_fqdn" {
  value = "${aws_route53_zone.lentacy.fqdn}"
}

output "failover_fqdn" {
  value = "${aws_route53_zone.failover.fqdn}"
}

output "multivalue_fqdn" {
  value = "${aws_route53_zone.multivalue.fqdn}"
}

output "geo_country_fqdn" {
  value = "${aws_route53_zone.geo_country.fqdn}"
}

output "geo_continent_fqdn" {
  value = "${aws_route53_zone.geo_continent.fqdn}"
}
