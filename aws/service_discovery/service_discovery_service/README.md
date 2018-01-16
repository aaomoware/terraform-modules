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
resource "aws_service_discovery_service" "sds" {
  name = "${var.name}"
  description = "${var.description}"

  dns_config {
    namespace_id = "${var.namespace_id}"

    dns_records {
      ttl = "${var.ttl}"
      type = "${var.type}"
    }
  }

  health_check_config {
    failure_threshold = "${var.failure_threshold}"
    resource_path = "${var.resource_path}"
    type = "${var.type}"
  }

  lifecycle  {
    create_before_destroy = true
  }
}
```

###### Documentation
[aws_service_discovery_service](https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html)
