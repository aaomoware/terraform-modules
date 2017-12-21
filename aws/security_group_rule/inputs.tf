variable type                     { default = "" }
variable selF                     { default = false }
variable to_port                  { default = "" }
variable protocol                 { default = "" }
variable from_port                { default = "" }
variable description              { default = "" }
variable cidr_blocks              { default = [] type = "list" }
variable prefix_list_ids          { default = [] type = "list" }
variable security_group_id        { default = "" }
variable source_security_group_id { default = "" }
