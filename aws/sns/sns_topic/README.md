#### SNS Topic


###### Variables
```
variable name               { default = "" }
variable policy             { default = "" }
variable display_name       { default = "" }
variable delivery_policy    { default = "" }
```

##### Outputs
```
resource "aws_sns_topic" "st" {
  name = "${var.name}"
  policy = "${var.policy}"
  display_name = "${var.display_name}"
  delivery_policy = "${var.delivery_policy}"
}
```

###### Documentation
[aws_sns_topic](https://www.terraform.io/docs/providers/aws/r/sns_topic.html)
