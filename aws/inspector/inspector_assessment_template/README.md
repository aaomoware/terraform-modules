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
resource "aws_inspector_assessment_template" "iat" {
  name       = "${var.name}"
  target_arn = "${var.target_arn}"
  duration   = "${var.duration}"

  rules_package_arns = ["${var.rules_package_arns}"]
}
```

###### Documentation
[aws_inspector_assessment_template](https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html)
