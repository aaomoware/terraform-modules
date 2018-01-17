#### Lambda Event Source Mapping


###### Variables
```
variable enabled              { default = "" }
variable batch_size           { default = "" }
variable function_name        { default = "" }
variable event_source_arn     { default = "" }
variable starting_position    { default = "" }
```

##### Outputs
```
output "lesm_uuid" {
  value = "${aws_lambda_event_source_mapping.lesm.uuid}"
}
output "lesm_function_arn" {
  value = "${aws_lambda_event_source_mapping.lesm.function_arn}"
}
```

###### Documentation
[aws_lambda_event_source_mapping](https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html)
