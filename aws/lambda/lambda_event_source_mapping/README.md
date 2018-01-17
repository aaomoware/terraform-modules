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
resource "aws_lambda_event_source_mapping" "lesm" {
  enabled           = "${var.enabled}"
  batch_size        = "${var.batch_size}"
  function_name     = "${var.function_name}"
  event_source_arn  = "${var.event_source_arn}"
  starting_position = "${var.starting_position}"
}
```

###### Documentation
[aws_lambda_event_source_mapping](https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html)
