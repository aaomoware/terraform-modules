variable name                        { default = "" }
variable tags                        { default = {} type = "map" }
variable subnets                     { default = "" }
variable internal                    { default = "" }
variable instances                   { default = [] }
variable access_logs                 { default = "" }
variable listener_one                { type = "map" }
variable listener_two                { type = "map" }
variable health_check                { type = "map" }
variable idle_timeout                { default = 400 }
variable security_groups             { default = "" }
variable availability_zones          { default = [] }
variable connection_draining         { default = true }
variable cross_zone_load_balancing   { default = true }
variable connection_draining_timeout { default = 400 }
