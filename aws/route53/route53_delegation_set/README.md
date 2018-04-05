#### Route53 Delegation Set


###### Variables
```
variable reference_name { default = [] type = "list" }
```

##### Outputs
```
output "rt53_d_set_zone_id" {
  value = "${aws_route53_delegation_set.route53_delegation_set.*.zone_id}"
}

output "rt53_d_set_name_servers" {
  value = "${aws_route53_delegation_set.route53_delegation_set.*.name_servers}"
}
```

###### Documentation
[route53_delegation_set](https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html)
