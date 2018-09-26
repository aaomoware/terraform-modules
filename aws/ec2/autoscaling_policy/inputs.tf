
variable name                      {}
variable cooldown                  { default = "0" }
variable policy_type               { default = "SimpleScaling" }
variable adjustment_type           { default = "ExactCapacity" }
variable scaling_adjustment        { default = "" }
variable autoscaling_group_name    {}
variable estimated_instance_warmup { default = "" }
