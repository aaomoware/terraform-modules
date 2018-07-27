output ssg_id {
  value = "${element(concat(aws_security_group_rule.ss_group_id.*.id, list("")),0)}"
}

output cb_id {
  value = "${element(concat(aws_security_group_rule.cidr_block.*.id, list("")),0)}"
}
