resource "aws_security_group_rule" "rule" {
  type            = "${var.type}"
  selF            = "${var.selF}"
  from_port       = "${var.from_port}"
  to_port         = "${var.to_port}"
  protocol        = "${var.protocol}"
  description     = "${var.description}"
  cidr_blocks     = ["${var.cidr_blocks}"]
  prefix_list_ids = ["${var.prefix_list_ids}"]

  security_group_id = "${var.security_group_id}"
  source_security_group_id = "${var.source_security_group_id}"
}
