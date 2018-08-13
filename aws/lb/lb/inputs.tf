variable tags                             { default = {} type = "map" }
variable subnet_mapping                   { default = {} type = "map" }
variable security_groups                  { default = [] type = "list" }

variable name                             { default = "tf-lb" }
variable subnets                          { default = "" }
variable access_logs                      { default = "" }
variable idle_timeout                     { default = "60" }
variable ip_address_type                  { default = "" }
variable load_balancer_type               { default = "application" }

variable logs                             { default = false }
variable maps                             { default = false }
variable internal                         { default = false }
variable enable_http2                     { default = true }
variable enable_deletion_protection       { default = false }
variable enable_cross_zone_load_balancing { default = false }
