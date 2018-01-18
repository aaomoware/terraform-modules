#### Service Discovery Service


###### Variables
```
variable name               { default = "" }
variable description        { default = "" }

variable dns_records        { default = "" }
variable namespace_id       { default = "" }

variable ttl                { default = "" }
variable dns_records_type   { default = "" }

variable type               { default = "" }
variable resource_path      { default = "" }
variable failure_threshold  { default = "" }
```

##### Outputs
```
output "sds_id" {
  value = "${aws_service_discovery_service.sds.id}"
}
output "sds_arn" {
  value = "${aws_service_discovery_service.sds.arn}"
}
```

###### Documentation
[aws_service_discovery_service](https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html)
