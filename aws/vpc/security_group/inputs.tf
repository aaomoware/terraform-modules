variable name                     { default = "" }
variable tags                     { default = {} type = "map" }
variable vpc_id                   { default = "" }
variable description              { default = "" }

variable named                    { default = false }
variable name_prefix              { default = false }
variable egress_self              { default = false }
variable ingress_self             { default = false }
variable name_skeleton            { default = false }
variable name_prefix_skeleton     { default = false }
variable revoke_rules_on_delete   { default = false }
