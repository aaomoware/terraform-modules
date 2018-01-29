#---header, lambda
resource "aws_ses_receipt_rule" "header_lambda" {
  count         = "${var.header_a && var.lambda_a ? 1 : 0}"
  name          = "${var.name}"
  after         = "${var.after}"
  enabled       = "${var.enabled}"
  recipients    = ["${var.recipients}"]
  tls_policy    = "${var.tls_policy}"
  scan_enabled  = "${var.scan_enabled}"
  rule_set_name = "${var.rule_set_name}"

  add_header_action {
    header_name       = "${var.header_name}"
    header_value      = "${var.header_value}"
    header_position   = "${var.header_position}"
  }

  lambda_action {
    function_arn      = "${var.function_arn}"
    lambda_position   = "${var.lambda_position}"
    invocation_type   = "${var.invocation_type}"
    lambda_topic_arn  = "${var.lambda_topic_arn}"
  }
}
