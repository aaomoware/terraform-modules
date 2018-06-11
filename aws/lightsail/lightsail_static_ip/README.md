####  Lightsail Static IP


###### Variables
```
variable name  { default = "" }
```

##### Outputs
```
output "lsi_arn" {
  value = "${aws_lightsail_static_ip.lsi.arn}"
}
output "lsi_ip_address" {
  value = "${aws_lightsail_static_ip.lsi.ip_address}"
}
output "lsi_support_code" {
  value = "${aws_lightsail_static_ip.lsi.support_code}"
}
```

###### Documentation
[aws_lightsail_static_ip](https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html)
