variable name                        { default = "" }
variable tags                        { default = {} type = "map" }
variable subnets                     { default = [] type = "list" }
variable internal                    { default = false }
variable listener                    { default = [] type = "list" }
variable instances                   { default = [] type = "list" }
variable access_logs                 { default = [] type = "list" }
variable health_check                { default = [] type = "list" }
variable idle_timeout                { default = 400 }
variable security_groups             { default = [] type = "list" }
variable availability_zones          { default = [] type = "list" }
variable connection_draining         { default = true }
variable cross_zone_load_balancing   { default = true }
variable connection_draining_timeout { default = 400 }


variable bucket                      { default = "" }
variable al_interval                 { default = "60" }
variable bucket_prefix               { default = "" }

variable lb_port                     { default = "80" }
variable lb_protocol                 { default = "http" }
variable instance_port               {}
variable instance_protocol           { default = "http" }
variable ssl_certificate_id          { default = "" }

variable target                      {}
variable timeout                     { default = "3" }
variable hc_interval                 { default = "30" }
variable healthy_threshold           { default = "2" }
variable unhealthy_threshold         { default = "2" }
