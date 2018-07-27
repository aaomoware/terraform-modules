resource "aws_security_group_rule" "ss_group_id" {

  count  = "${var.ss_group_id ? 1 : 0}"

  type             = "${var.type}"
  self             = "${var.selF}"
  to_port          = "${var.to_port}"
  protocol         = "${var.protocol}"
  from_port        = "${var.from_port}"
  description      = "${var.description}"
  prefix_list_ids  = ["${var.prefix_list_ids}"]
  ipv6_cidr_blocks = ["${var.ipv6_cidr_blocks}"]
  security_group_id = "${var.security_group_id}"
  source_security_group_id = "${var.source_security_group_id}"
}


resource "aws_security_group_rule" "cidr_block" {

  count  = "${var.cidr_block ? 1 : 0}"

  type             = "${var.type}"
  self             = "${var.selF}"
  to_port          = "${var.to_port}"
  protocol         = "${var.protocol}"
  from_port        = "${var.from_port}"
  description      = "${var.description}"
  cidr_blocks      = ["${var.cidr_blocks}"]
  prefix_list_ids  = ["${var.prefix_list_ids}"]
  ipv6_cidr_blocks = ["${var.ipv6_cidr_blocks}"]
  security_group_id = "${var.security_group_id}"
}
