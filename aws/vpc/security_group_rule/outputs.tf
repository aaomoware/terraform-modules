output rule_id {
  value = "${element(concat(aws_security_group_rule.rule.*.id, list("")),0)}"
}
