#### Route53 Records


###### Variables
```
variable tags                          { default = "" }
variable name                          { default = "" }
variable type                          { default = "" }
variable zone_id                       { default = "" }
variable records                       { default = [] type = "list" }

variable alias_name                    { default = "" }
variable alias_zone_id                 { default = "" }
variable set_identifier                { default = "" }
variable health_check_id               { default = "" }

variable geolocation                   { default = "" }
variable failover_type                 { default = "" }
variable lentacy_region                { default = "" }

variable ttl                           { default = 300 }
variable weight                        { default = 10 }

variable alias                         { default = false }
variable simple                        { default = false }
variable lentacy                       { default = false }
variable failover                      { default = false }
variable weighted                      { default = false }
variable multivalue                    { default = false }
variable geo_country                   { default = false }
variable geo_continent                 { default = false }
variable evaluate_target_health        { default = true }
```

##### Outputs
```
output "alias_fqdn" {
  value = "${aws_route53_record.alias.fqdn}"
}

output "simple_fqdn" {
  value = "${aws_route53_record.simple.fqdn}"
}

output "lentacy_fqdn" {
  value = "${aws_route53_record.lentacy.fqdn}"
}

output "weighted_fqdn" {
  value = "${aws_route53_record.weighted.fqdn}"
}

output "failover_fqdn" {
  value = "${aws_route53_record.failover.fqdn}"
}

output "multivalue_fqdn" {
  value = "${aws_route53_record.multivalue.fqdn}"
}

output "geo_country_fqdn" {
  value = "${aws_route53_record.geo_country.fqdn}"
}

output "geo_continent_fqdn" {
  value = "${aws_route53_record.geo_continent.fqdn}"
}
```

###### Documentation
[aws_route53_record](https://www.terraform.io/docs/providers/aws/r/route53_record.html)
