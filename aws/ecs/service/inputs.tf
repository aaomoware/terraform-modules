variable name {}

variable replica {
  default = false
}

variable daemon {
  default = false
}

variable task_definition {}

variable desired_count {
  default = 0
}

variable launch_type {
  default = "EC2"
}

variable platform_version {
  default = "LATEST"
}

variable scheduling_strategy {
  default = "REPLICA"
}

variable cluster {
  default = ""
}

variable iam_role {
  default = ""
}

variable deployment_maximum_percent {
  default = 100
}

variable deployment_minimum_healthy_percent {
  default = 0
}

variable enable_ecs_managed_tags {
  default = false
}

variable propagate_tags {
  default = "TASK_DEFINITION"
}

variable health_check_grace_period_seconds {
  default = 1050
}

variable service_registries {
  default = ""
}

variable tags {
  default = []

  type = "list"
}

# ordered_placement_strategy
# https://www.terraform.io/docs/providers/aws/r/ecs_service.html#ordered_placement_strategy-1
variable ops_type {
  default = "binpack"
}

variable ops_field {
  default = "memory"
}

# placement_constraints
# https://www.terraform.io/docs/providers/aws/r/ecs_service.html#placement_constraints-1
variable pc_type {
  default = "memberOf"
}

variable pc_expression {
  default = "attribute:ecs.instance-type == t2.small"
}

variable security_groups {
  default = []
  type    = "list"
}

variable assign_public_ip {
  default = false
}

# service_registries
# https://www.terraform.io/docs/providers/aws/r/ecs_service.html#service_registries-1
variable registry_arn {
  default = ""
}

variable port {
  default = ""
}

variable elb_name {
  default = ""
}

variable container_name {}
variable container_port {}
variable target_group_arn {}

variable subnets {
  type = "list"
}

variable dc_type {
  default = "ECS"
}
