resource "aws_ses_active_receipt_rule_set" "sarrs" {
  rule_set_name = "${var.rule_set_name}"
}
