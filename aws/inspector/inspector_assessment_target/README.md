#### Inspector Assessment


###### Variables
```
variable name                { default = "" }
variable resource_group_arn  { default = "" }
```

##### Outputs
```
resource "aws_inspector_assessment_target" "iat" {
  name               = "${var.name}"
  resource_group_arn = "${var.resource_group_arn}"
}
```

###### Documentation
[aws_inspector_assessment_target](https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html)
