resource "aws_sqs_queue_policy" "policy" {
  policy    = "${var.policy}"
  queue_url = "${var.queue_url}"
}
