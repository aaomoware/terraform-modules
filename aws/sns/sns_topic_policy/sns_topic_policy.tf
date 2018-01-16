resource "aws_sns_topic_policy" "stp" {
  arn = "${var.arn}"
  policy = "${var.policy}"
}
