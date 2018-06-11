####  Lightsail Domain


###### Variables
```
variable domain_name { default = [] type = "list" }
```

##### Outputs
```
output "ld_id" {
  value = "${aws_lightsail_domain.ld.id}"
}
output "ld_arn" {
  value = "${aws_lightsail_domain.ld.arn}"
}
```

###### Documentation
[aws_lightsail_domain](https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html)
