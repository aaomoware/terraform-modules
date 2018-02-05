#### Service Discovery


###### Variables
```
variable vpc          { default = "" }
variable name         { default = "" }
variable description  { default = "" }
```

##### Outputs
```
output "sdpdn_id" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.id}"
}
output "sdpdn_arn" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.arn}"
}
output "sdpdn_hosted_zone" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.hosted_zone}"
}
```

###### Documentation
[aws_service_discovery_private_dns_namespace](https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html)
