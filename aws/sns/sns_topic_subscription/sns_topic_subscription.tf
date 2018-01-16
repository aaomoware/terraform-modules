resource "aws_sns_topic_subscription" "sts" {
  protocol                        = "${var.protocol}"
  endpoint                        = "${var.endpoint}"
  topic_arn                       = "${var.topic_arn}"
  raw_message_delivery            = "${var.raw_message_delivery}"
  endpoint_auto_confirms          = "${var.endpoint_auto_confirms}"
  confirmation_timeout_in_minutes = "${var.confirmation_timeout_in_minutes}"
}
