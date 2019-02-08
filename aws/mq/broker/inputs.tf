variable id                         { default = "" }
variable revision                   { default = "" }

variable audit                      { default = false }
variable general                    { default = false }

variable time_zone                  {}
variable time_of_day                {}
variable day_of_week                {}

variable groups                     { default = [] type = "list" }
variable password                   {}
variable username                   {}
variable console_access             { default = true }

variable tags                       { default = {} type = "map" }
variable subnet_ids                 { default = [] type = "list" }
variable engine_type                { default = "ActiveMQ" }
variable broker_name                {}
variable engine_version             { default = "5.15.6" }
variable deployment_mode            { default = "SINGLE_INSTANCE" }
variable security_groups            { default = [] type = "list" }
variable apply_immediately          { default = false }
variable host_instance_type         { default = "mq.t2.micro" }
variable publicly_accessible        { default = true }
variable auto_minor_version_upgrade { default = false }
