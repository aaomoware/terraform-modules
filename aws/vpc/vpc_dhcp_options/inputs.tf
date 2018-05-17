variable tags                 { default = {} type = "" }
variable name                 { default = "" }
variable domain_name          { default = "" }
variable netbios_node_type    { default = "" }

variable ntp_servers          { default = [] type = "list" }
variable domain_name_servers  { default = [] type = "list" }
variable netbios_name_servers { default = [] type = "list" }
