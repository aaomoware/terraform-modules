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
output "sts_id" {
  value = "${aws_sns_topic_subscription.sts.id}"
}
output "sts_arn" {
  value = "${aws_sns_topic_subscription.sts.arn}"
}
output "sts_topic_arn" {
  value = "${aws_sns_topic_subscription.sts.topic_arn}"
}
```

###### Documentation
[aws_sns_topic_subscription](https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocol)
