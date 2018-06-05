resource "aws_network_acl_rule" "nar" {
  egress         = "${var.egress}"
  to_port        = "${var.to_port}"
  protocol       = "${var.protocol}"
  from_port      = "${var.from_port}"
  cidr_block     = "${var.cidr_block}"
  rule_action    = "${var.rule_action}"
  rule_number    = "${var.rule_number}"
  network_acl_id = "${var.network_acl_id}"
}
