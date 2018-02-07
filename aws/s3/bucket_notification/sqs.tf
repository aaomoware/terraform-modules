resource "aws_s3_bucket_notification" "sqs" {
  count  = "${var.sqs ? 1 : 0}"
  bucket = "${var.bucket}"

  queue {
    id            = "${var.sqs_id}"
    events        = ["${var.sqs_events}"]
    queue_arn     = "${var.sqs_queue_arn}"
    filter_prefix = "${var.sqs_filter_prefix}"
    filter_suffix = "${var.sqs_filter_suffix}"
  }
}
