
variable engine_name                    {}
variable major_engine_version           {}

variable tags                           { default = {} type = "map" }
variable name                           { default = "" }
variable port                           { default = "" }
variable delete                         { default = "15m" }
variable version                        { default = "" }
variable options                        { default = [] type = "list" }
variable name_prefix                    { default = "" }
variable option_settings                { default = [] type = "list" }
variable option_group_description       { default = "Managed by Terraform" }
variable db_security_group_memberships  { default = [] type = "list" }
variable vpc_security_group_memberships { default = [] type = "list" }
