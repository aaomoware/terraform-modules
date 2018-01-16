#### Service Discovery Private DNS Namespace


###### Variables
```
variable vpc        { default = "" }
variable name       { default = "" }
variable dest_range { default = "" }
```

##### Outputs
```
resource "aws_service_discovery_private_dns_namespace" "sdpdn" {
  vpc = "${var.vpc}"
  name = "${var.name}"
  description = "${var.description}"
}
```

###### Documentation
[aws_service_discovery_private_dns_namespace](https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html)
