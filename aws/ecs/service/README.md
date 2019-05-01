
####  ECS Service


###### Variables
```
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
```

##### Outputs
```
output "id" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.id, list("")), 0)}"
}

output "name" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.name, list("")), 0)}"
}

output "cluster" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.cluster, list("")), 0)}"
}

output "iam_role" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.iam_role, list("")), 0)}"
}

output "desired_count" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.desired_count, list("")), 0)}"
}

output "id" {
  value = "${element(concat(aws_ecs_service.es.*.id, list("")), 0)}"
}

output "name" {
  value = "${element(concat(aws_ecs_service.es.*.name, list("")), 0)}"
}

output "cluster" {
  value = "${element(concat(aws_ecs_service.es.*.cluster, list("")), 0)}"
}

output "iam_role" {
  value = "${element(concat(aws_ecs_service.es.*.iam_role, list("")), 0)}"
}

output "desired_count" {
  value = "${element(concat(aws_ecs_service.es.*.desired_count, list("")), 0)}"
}
```

###### Documentation
[aws_ecs_service](https://www.terraform.io/docs/providers/aws/r/ecs_service.html#load_balancer)
