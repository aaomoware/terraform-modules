####  API Gateway API Keys

###### Variables
```
variable name        {}
variable value       { default = "" }
variable enabled     { default = true }
variable stage_key   { default = "" }
variable description { default = "Managed by Terraform". }
```

##### Outputs
```
output "id" {
  value = "${aws_api_gateway_api_key.agak.id}"
}
output "value" {
  value = "${aws_api_gateway_api_key.agak.value}"
}
output "created_date" {
  value = "${aws_api_gateway_api_key.agak.created_date}"
}
output "last_updated_date" {
  value = "${aws_api_gateway_api_key.agak.last_updated_date}"
}
```

###### Documentation
[aws_api_gateway_api_key](https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html)
