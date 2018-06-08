
variable engine_name                    {}
variable major_engine_version           {}

variable tags                           { default = {} type = "map" }
variable name                           { default = "" }
variable port                           { default = "" }
variable delete                         { default = "15m" }
variable version                        { default = "" }
variable name_prefix                    { default = "" }
variable option_group_description       { default = "Managed by Terraform" }
variable options {
  default = [
    {
      port = 11211
      version = "13.1.0.0"
      option_name = "Timezone"
      option_settings = [
        {
          name = "TIME_ZONE"
          value = "UTC"
        }
      ]
      db_security_group_memberships = [""]
      vpc_security_group_memberships = [""]
    },
    {
      option_name = ""
    }
  ]
  type = "list"
}
variable option_settings                { default = [] type = "list" }
variable db_security_group_memberships  { default = [] type = "list" }
variable vpc_security_group_memberships { default = [] type = "list" }
