
variable engine_name                    {}
variable major_engine_version           {}

variable tags                           { default = {} type = "map" }
variable name                           { default = "" }
variable delete                         { default = "15m" }
variable options                        { default = [] type = "list" }
variable name_prefix                    { default = "" }
variable option_group_description       { default = "Managed by Terraform" }
