#### Inspector Assessment Template


###### Variables
```
variable name                 { default = "" }
variable duration             { default = "" }
variable target_arn           { default = "" }
variable rules_package_arns   { default = "" }
```

##### Outputs
```
output "iat_arn" {
  value = "${aws_inspector_assessment_template.iat.arn}"
}
```

###### Documentation
[aws_inspector_assessment_template](https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html)
