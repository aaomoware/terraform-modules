####  SSM Parameter


###### Variables
```
variable name       { default = "" }
variable type       { default = "" }
variable value      { default = "" }
variable key_id     { default = "" }
variable overwrite  { default = "" }
```

##### Outputs
```
output "ssmp_arn" {
  value = "${aws_ssm_parameter.ssmp.arn}"
}
output "ssmp_name" {
  value = "${aws_ssm_parameter.ssmp.name}"
}
output "ssmp_type" {
  value = "${aws_ssm_parameter.ssmp.type}"
}
output "ssmp_value" {
  value = "${aws_ssm_parameter.ssmp.value}"
}
```

###### Documentation
[aws_ssm_parameter](https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html)
