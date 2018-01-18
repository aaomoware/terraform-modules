####  AWS Message Broker


###### Variables
```
variable groups                          { default = [] type="list" }
variable subnet_ids                      { default = [] type="list" }
variable security_groups                 { default = [] type="list" }

variable id                              { default = "" }
variable revision                        { default = "" }
variable username                        { default = "" }
variable password                        { default = "" }
variable time_zone                       { default = "" }
variable time_of_day                     { default = "" }
variable engine_type                     { default = "" }
variable broker_name                     { default = "" }
variable day_of_week                     { default = "" }
variable configuration                   { default = "" }
variable console_access                  { default = "" }
variable engine_version                  { default = "" }
variable deployment_mode                 { default = "" }
variable apply_immediately               { default = "" }
variable host_instance_type              { default = "" }
variable publicly_accessible             { default = "" }
variable auto_minor_version_upgrade      { default = "" }
variable maintenance_window_start_time   { default = "" }
```

##### Outputs
```
output "mb_id" {
  valid = "${aws_mq_broker.mb.id}"
}
output "mb_arn" {
  valid = "${aws_mq_broker.mb.arn}"
}
output "mb_instances" {
  valid = "${aws_mq_broker.mb.instances}"
}
```

###### Documentation
[aws_mq_broker](https://www.terraform.io/docs/providers/aws/r/mq_broker.html#user)
