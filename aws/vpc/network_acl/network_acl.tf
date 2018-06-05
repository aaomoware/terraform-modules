resource "aws_network_acl" "na" {
  vpc_id = "${var.vpc_id}"
  subnet_ids = ["${var.subnet_ids}"]

  egress {
    action     = "${var.egress_action}"
    rule_no    = "${var.egress_rule_no}"
    to_port    = "${var.egress_to_port}"
    protocol   = "${var.egress_protocol}"
    icmp_code  = "${var.egress_icmp_code}"
    icmp_type  = "${var.egress_icmp_type}"
    from_port  = "${var.egress_from_port}"
    cidr_block = "${var.egress_cidr_block}"
  }

  ingress {
    action     = "${var.ingress_action}"
    rule_no    = "${var.ingress_rule_no}"
    to_port    = "${var.ingress_to_port}"
    protocol   = "${var.ingress_protocol}"
    icmp_code  = "${var.ingress_icmp_code}"
    icmp_type  = "${var.ingress_icmp_type}"
    from_port  = "${var.ingress_from_port}"
    cidr_block = "${var.ingress_cidr_block}"
  }

  tags = "${var.tags}"
}
