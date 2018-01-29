#---header action
resource "aws_ses_receipt_rule" "header" {
  count         = "${var.header_a ? 1 : 0}"
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
}


#---s3 action
resource "aws_ses_receipt_rule" "s3" {
  count         = "${var.s3_a ? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  s3_action {
    topic_arn         = "${var.topic_arn}"
    s3_position       = "${var.s3_position}"
    bucket_name       = "${var.bucket_name}"
    kms_key_arn       = "${var.kms_key_arn}"
    object_key_prefix = "${var.object_key_prefix}"
  }
}


#---sns action
resource "aws_ses_receipt_rule" "sns" {
  count         = "${var.sns_a? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  sns_action {
    topic_arn         = "${var.topic_arn}"
    sns_position      = "${var.sns_position}"
  }
}


#---stop action
resource "aws_ses_receipt_rule" "stop" {
  count         = "${var.stop_a ? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  stop_action {
    scope             = "${var.scope}"
    stop_position     = "${var.stop_position}"
    stop_topic_arn    = "${var.stop_topic_arn}"
  }
}


#---workmail action
resource "aws_ses_receipt_rule" "workmail" {
  count         = "${var.workmail_a ? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  workmail_action {
    position          = "${var.workMail_position}"
    topic_arn         = "${var.workmail_topic_arn}"
    organization_arn  = "${var.organization_arn}"
  }
}
