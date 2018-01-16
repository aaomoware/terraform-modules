#### SNS Topic Policy


###### Variables
```
variable arn    { default = "" }
variable policy { default = "" }
```

##### Outputs
```
resource "aws_sns_topic_policy" "stp" {
  arn = "${var.arn}"
  policy = "${var.policy}"
}
```

###### Documentation
[aws_sns_topic_policy](https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html)
