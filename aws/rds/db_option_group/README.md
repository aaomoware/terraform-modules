####  DB Option Group


###### Variables
```
variable engine_name                    {}
variable major_engine_version           {}

variable tags                           { default = "" }
variable name                           { default = "" }
variable port                           { default = "" }
variable delete                         { default = 15 }
variable version                        { default = "" }
variable name_prefix                    { default = "" }
variable option_group_description       { default = "Managed by Terraform" }
variable options {
  default = [
    {
      port = ""
      version = ""
      option_name = "Timezone"
      option_settings = {
        name = "TIME_ZONE"
        value = "UTC"
      }
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
```

##### Outputs
```
output "id" {
  value = "${aws_db_option_group.dog.id}"
}
output "arn" {
  value = "${aws_db_option_group.dog.arn}"
}
```

###### Documentation
[aws_db_event_subscription](https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html)
