#### Service Discovery Public DNS Namespace


###### Variables
```
variable name       { default = "" }
variable dest_range { default = "" }
```

##### Outputs
```
resource "aws_service_discovery_public_dns_namespace" "sdpdn" {
  name = "${var.name}"
  description = "${var.description}"
}
```

###### Documentation
[aws_service_discovery_public_dns_namespace](https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html)
