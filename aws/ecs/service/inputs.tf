variable name {}
variable task_definition {}

variable desired_count {
  default = 0
}

variable launch_type {
  default = "EC"
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
  default = ""
}

variable deployment_minimum_healthy_percent {
  default = ""
}

variable enable_ecs_managed_tags {
  default = false
}

variable propagate_tags {
  default = "SERVICE"
}

variable health_check_grace_period_seconds {
  default = 1050
}

variable network_configuration {
  default = ""
}

variable service_registries {
  default = ""
}

variable tags {
  default = []

  type = "list"
}

# deployment_controller
variable dc_type {
  default = "ECS"
}

# load_balancer
# https://www.terraform.io/docs/providers/aws/r/ecs_service.html#load_balancer-1
variable elb_name {
  default = ""
}

variable target_group_arn {
  default = ""
}

variable container_name {
  default = ""
}

variable container_port {
  default = ""
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

variable expression {
  default = "attribute:ecs.instance-type == t2.small"
}

# network_configuration
# https://www.terraform.io/docs/providers/aws/r/ecs_service.html#network_configuration-1
variable subnets {
  default = []
  type    = "list"
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

variable container_port {
  default = ""
}

variable container_name {
  default = ""
}
