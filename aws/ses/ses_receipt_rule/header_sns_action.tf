#---header and sns
resource "aws_ses_receipt_rule" "header_sns" {
  count         = "${var.header_a && var.sns_a? 1 : 0}"
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

  sns_action {
    position        = "${var.sns_position}"
    topic_arn       = "${var.sns_topic_arn}"
  }
}
