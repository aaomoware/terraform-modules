variable name                        { default = "" }
variable tags                        { default = {} type = "map" }
variable subnets                     { default = [] type = "list" }
variable internal                    { default = "" }
variable instances                   { default = [] type = "list" }
variable access_logs                 { default = {} type = "map" }
variable listener_one                { default = {} type = "map" }
variable listener_two                { default = {} type = "map" }
variable health_check                { default = {} type = "map" }
variable idle_timeout                { default = 400 }
variable security_groups             { default = [] type = "list" }
variable availability_zones          { default = [] type = "list" }
variable connection_draining         { default = true }
variable cross_zone_load_balancing   { default = true }
variable connection_draining_timeout { default = 400 }
