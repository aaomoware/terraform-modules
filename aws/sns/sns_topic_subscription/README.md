#### SNS Topic Subscription


###### Variables
```
variable protocol                         { default = "" }
variable endpoint                         { default = "" }
variable topic_arn                        { default = "" }
variable raw_message_delivery             { default = false }
variable endpoint_auto_confirms           { default = false }
variable confirmation_timeout_in_minutes  { default = "" }
```

##### Outputs
```
resource "aws_sns_topic_subscription" "sts" {
  protocol                        = "${var.protocol}"
  endpoint                        = "${var.endpoint}"
  topic_arn                       = "${var.topic_arn}"
  raw_message_delivery            = "${var.raw_message_delivery}"
  endpoint_auto_confirms          = "${var.endpoint_auto_confirms}"
  confirmation_timeout_in_minutes = "${var.confirmation_timeout_in_minutes}"
}
```

###### Documentation
[aws_sns_topic_subscription](https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocol)
