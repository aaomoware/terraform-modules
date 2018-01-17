#### Lambda Alias


###### Variables
```
variable name              { default = "" }
variable description       { default = "" }
variable function_name     { default = "" }
variable function_version  { default = "" }
```

##### Outputs
```
resource "aws_lambda_alias" "la" {
  name             = "${var.name}"
  description      = "${var.description}"
  function_name    = "${var.function_name}"
  function_version = "${var.function_version}"
}
```

###### Documentation
[aws_lambda_alias](https://www.terraform.io/docs/providers/aws/r/lambda_alias.html)
