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
output "la_arn" {
  value = "${aws_lambda_alias.la.arn}"
}
```

###### Documentation
[aws_lambda_alias](https://www.terraform.io/docs/providers/aws/r/lambda_alias.html)
