variable type                     { default = "" }
variable to_port                  { default = "" }
variable protocol                 { default = "" }
variable from_port                { default = "" }
variable description              { default = "" }
variable cidr_blocks              { default = [] type = "list" }
variable prefix_list_ids          { default = [] type = "list" }
variable ipv6_cidr_blocks         { default = [] type = "list" }
variable security_group_id        { default = "" }
variable source_security_group_id { default = "" }

variable selF                     { default = false }
variable cidr_block               { default = false }
variable ss_group_id              { default = false }
