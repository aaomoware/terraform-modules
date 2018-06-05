variable deny_egress            { default = false }
variable deny_ingress           { default = false }
variable deny_all_traffic       { default = false }

variable ingress_action         { default = "allow" }
variable ingress_rule_no        { default = "100" }
variable ingress_to_port        { default = "0" }
variable ingress_protocol       { default = "-1" }
variable ingress_from_port      { default = "0" }
variable ingress_cidr_block     { default = "0.0.0.0/0" }

variable egress_action          { default = "allow" }
variable egress_rule_no         { default = "100" }
variable egress_to_port         { default = "0" }
variable egress_protocol        { default = "-1" }
variable egress_from_port       { default = "0" }
variable egress_cidr_block      { default = "0.0.0.0/0" }

variable default_network_acl_id {}
