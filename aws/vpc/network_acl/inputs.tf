variable vpc_id             {}
variable tags               { default = {} type = "list" }
variable subnet_ids         { default = [] type = "list" }

variable egress_action      {}
variable egress_rule_no     {}
variable egress_to_port     {}
variable egress_protocol    {}
variable egress_from_port   {}
variable egress_icmp_type   { default = "0" }
variable egress_icmp_code   { default = "0" }
variable egress_cidr_block  { default = "0.0.0.0/0" }

variable ingress_action     {}
variable ingress_rule_no    {}
variable ingress_to_port    {}
variable ingress_protocol   {}
variable ingress_from_port  {}
variable ingress_icmp_type  { default = "0" }
variable ingress_icmp_code  { default = "0" }
variable ingress_cidr_block { default = "0.0.0.0/0" }
