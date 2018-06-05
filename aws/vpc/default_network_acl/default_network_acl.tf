resource "aws_default_network_acl" "dna" {
  default_network_acl_id = "${var.vpc_id}"

  ingress {
    action     = "${var.ingress_action}"
    rule_no    = "${var.ingress_rule_no}"
    to_port    = "${var.ingress_to_port}"
    protocol   = "${var.ingress_protocol}"
    from_port  = "${var.ingress_from_port}"
    cidr_block = "${var.ingress_cidr_block}"
  }

  egress {
    action     = "${var.egress_action}"
    rule_no    = "${var.egress_rule_no}"
    to_port    = "${var.egress_to_port}"
    protocol   = "${var.egress_protocol}"
    from_port  = "${var.egress_from_port}"
    cidr_block = "${var.egress_cidr_block}"
  }
}

#---deny all Egress traffic, allowing Ingress
resource "aws_default_network_acl" "deny_egress" {
  count = "${var.deny_egress ? 1 : 0 }"
  default_network_acl_id = "${var.vpc_id}"

  ingress {
    action     = "${var.ingress_action}"
    rule_no    = "${var.ingress_rule_no}"
    to_port    = "${var.ingress_to_port}"
    protocol   = "${var.ingress_protocol}"
    from_port  = "${var.ingress_from_port}"
    cidr_block = "${var.ingress_cidr_block}"
  }
}

#---deny all Ingress traffic, allowing Egress
resource "aws_default_network_acl" "deny_ingress" {
  count = "${var.deny_ingress ? 1 : 0 }"
  default_network_acl_id = "${var.vpc_id}"

  egress {
    action     = "${var.egress_action}"
    rule_no    = "${var.egress_rule_no}"
    to_port    = "${var.egress_to_port}"
    protocol   = "${var.egress_protocol}"
    from_port  = "${var.egress_from_port}"
    cidr_block = "${var.egress_cidr_block}"
  }
}

#---deny all traffic to any Subnet in the Default Network ACL
resource "aws_default_network_acl" "denyalltraffic" {
  count = "${var.deny_all_traffic ? 1 : 0}"
  default_network_acl_id = "${aws_vpc.mainvpc.default_network_acl_id}"
}
