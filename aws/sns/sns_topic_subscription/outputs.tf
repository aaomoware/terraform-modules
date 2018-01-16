output "sts_id" {
  value = "${aws_sns_topic_subscription.sts.id}"
}
output "sts_arn" {
  value = "${aws_sns_topic_subscription.sts.arn}"
}
output "sts_topic_arn" {
  value = "${aws_sns_topic_subscription.sts.topic_arn}"
}
