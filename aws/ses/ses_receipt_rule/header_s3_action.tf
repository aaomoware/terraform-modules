#---header and s3 actions
resource "aws_ses_receipt_rule" "header_s3" {
  count         = "${var.header_a && var.s3_a ? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  add_header_action {
    header_name     = "${var.header_name}"
    header_value    = "${var.header_value}"
    header_position = "${var.header_position}"
  }

  s3_action {
    topic_arn         = "${var.s3_topic_arn}"
    position          = "${var.s3_position}"
    bucket_name       = "${var.bucket_name}"
    kms_key_arn       = "${var.kms_key_arn}"
    object_key_prefix = "${var.object_key_prefix}"
  }
}
