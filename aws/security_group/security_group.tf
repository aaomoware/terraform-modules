#---name, fixed name
resource "aws_security_group" "name" {
  count = "${var.name_prefix ? 0 : 1}"

  name        = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  ingress {
    self             = "${var.selF}"
    to_port          = "${var.ingress_to_port}"
    from_port        = "${var.ingress_from_port}"
    protocol         = "${var.ingress_protocol}"
    cidr_blocks      = ["${var.ingress_cidr_blocks}"]
    security_groups  = ["${var.ingress_security_groups}"]
    ipv6_cidr_blocks = ["${var.ingress_ipv6_cidr_blocks}"]
  }

  egress {
    self             = "${var.selF}"
    to_port          = "${var.egress_to_port}"
    from_port        = "${var.egress_from_port}"
    protocol         = "${var.egress_protocol}"
    cidr_blocks      = ["${var.egress_cidr_blocks}"]
    security_groups  = ["${var.egress_security_groups}"]
    prefix_list_ids  = ["${var.egress_prefix_list_ids}"]
    ipv6_cidr_blocks = ["${var.egress_ipv6_cidr_blocks}"]
  }
}


#---name_prefix: creates unique name
resource "aws_security_group" "name_prefix" {
  count = "${var.name_prefix ? 1 : 0}"

  name_prefix = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  ingress {
    self             = "${var.selF}"
    to_port          = "${var.ingress_to_port}"
    from_port        = "${var.ingress_from_port}"
    protocol         = "${var.ingress_protocol}"
    cidr_blocks      = ["${var.ingress_cidr_blocks}"]
    security_groups  = ["${var.ingress_security_groups}"]
    ipv6_cidr_blocks = ["${var.ingress_ipv6_cidr_blocks}"]
  }

  egress {
    self             = "${var.selF}"
    to_port          = "${var.egress_to_port}"
    from_port        = "${var.egress_from_port}"
    protocol         = "${var.egress_protocol}"
    cidr_blocks      = ["${var.egress_cidr_blocks}"]
    security_groups  = ["${var.egress_security_groups}"]
    prefix_list_ids  = ["${var.egress_prefix_list_ids}"]
    ipv6_cidr_blocks = ["${var.egress_ipv6_cidr_blocks}"]
  }
}
