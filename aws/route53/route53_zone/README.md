#### Route53 Zones


###### Variables
```
variable tags               { default = {} type = "map" }
variable type               { default = "" }
variable name               { default = "" }
variable vpc_id             { default = "" }
variable comment            { default = "" }
variable vpc_region         { default = "" }
variable force_destroy      { default = "" }
variable delegation_set_id  { default = "" }
```

##### Outputs
```
output "vpc_zone_id" {
  value = "${element(concat(aws_route53_zone.zones_vpc.*.zone_id, list("")), 0)}"
}
output "vpc_name_servers" {
  value = "${element(concat(aws_route53_zone.zones_vpc.*.name_servers, list("")), 0)}"
}

output "set_id_zone_id" {
  value = "${element(concat(aws_route53_zone.zones_set_id.*.zone_id, list("")), 0)}"
}
output "set_id_name_servers" {
  value = "${element(concat(aws_route53_zone.zones_set_id.*.name_servers, list("")), 0)}"
}
```

###### Documentation
[aws_route53_zone](https://www.terraform.io/docs/providers/aws/r/route53_zone.html)
