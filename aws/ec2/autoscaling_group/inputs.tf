
variable tags                       { default = [] type = "list" }
variable name                       { default = "" }
variable delete                     { default = "10m" }
variable max_size                   {}
variable min_size                   {}
variable force_delete               { default = true }
variable load_balancers             { default = [] type = "list" }
variable placement_group            { default = "" }
variable default_cooldown           { default = 1 }
variable desired_capacity           { default = "" }
variable health_check_type          { default = "EC2" }
variable vpc_zone_identifier        { default = [] type = "list" }
variable termination_policies       { default = ["NewestInstance"] type = "list" }
variable launch_configuration       {}
variable health_check_grace_period  { default = 300 }
