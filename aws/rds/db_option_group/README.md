####  DB Option Group


###### Variables
```
variable engine_name                    {}
variable major_engine_version           {}

variable tags                           { default = {} type = "map" }
variable name                           { default = "" }
variable delete                         { default = "15m" }
variable options                        { default = [] type = "list" }
variable name_prefix                    { default = "" }
variable option_group_description       { default = "Managed by Terraform" }
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
