resource "aws_ses_receipt_rule_set" "srrs" {
  rule_set_name = "${var.rule_set_name}"
}
