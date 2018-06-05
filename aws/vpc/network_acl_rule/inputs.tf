variable protocol        {}
variable rule_number     {}
variable rule_action     {}
variable network_acl_id  {}

variable egress          { default = false }
variable to_port         { default = "" }
variable from_port       { default = "" }
variable icmp_code       { default = 0 }
variable icmp_type       { default = 0 }
variable cidr_block      { default = "" }
