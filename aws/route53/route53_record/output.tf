output "alias_fqdn" {
  value = "${element(concat(aws_route53_record.alias.*.fqdn, list("")), 0)}"
}

output "simple_fqdn" {
  value = "${element(concat(aws_route53_record.simple.*.fqdn, list("")), 0)}"
}

output "lentacy_fqdn" {
  value = "${element(concat(aws_route53_record.lentacy.*.fqdn, list("")), 0)}"
}

output "weighted_fqdn" {
  value = "${element(concat(aws_route53_record.weighted.*.fqdn, list("")), 0)}"
}

output "failover_fqdn" {
  value = "${element(concat(aws_route53_record.failover.*.fqdn, list("")), 0)}"
}

output "multivalue_fqdn" {
  value = "${element(concat(aws_route53_record.multivalue.*.fqdn, list("")), 0)}"
}

output "geo_country_fqdn" {
  value = "${element(concat(aws_route53_record.geo_country.*.fqdn, list("")), 0)}"
}

output "geo_continent_fqdn" {
  value = "${element(concat(aws_route53_record.geo_continent.*.fqdn, list("")), 0)}"
}
