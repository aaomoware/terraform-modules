resource "aws_s3_bucket_notification" "sns" {
  count  = "${var.sns ? 1 : 0}"
  bucket = "${aws_s3_bucket.bucket.id}"

  topic {
    id            = "${var.sns_id}"
    events        = ["${var.sns_events}"]
    topic_arn     = "${var.sns_topic_arn}"
    filter_suffix = "${var.sns_filter_suffix}"
    filter_prefix = "${var.sns_filter_prefix}"
  }
}
