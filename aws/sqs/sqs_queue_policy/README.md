#### SQS Queue Policy


###### Variables
```
variable policy    { default = "" }
variable queue_url { default = "" }
```

##### Outputs
```
resource "aws_sqs_queue_policy" "policy" {
  policy    = "${var.policy}"
  queue_url = "${var.queue_url}"
}
```

###### Documentation
[aws_sqs_queue_policy](https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html)
