#### Route53 Zones


###### Variables
```
variable name               { default = "" }
variable vpc_id             { default = "" }
variable comment            { default = "" }
variable vpc_region         { default = "" }
variable force_destroy      { default = "" }
variable delegation_set_id  { default = "" }

variable vpc                { default = false }
variable set_id             { default = false }
```

##### Outputs
```
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
```

###### Documentation
[aws_route53_zone](https://www.terraform.io/docs/providers/aws/r/route53_zone.html)
