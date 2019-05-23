resource "aws_ecs_service" "es_replica" {
  count = "${var.replica ? 1 : 0}"

  name    = "${var.name}"
  cluster = "${var.cluster}"

  #  iam_role                           = "${var.iam_role}"
  launch_type   = "${var.launch_type}"
  desired_count = "${var.desired_count}"

  #  propagate_tags                     = "${var.propagate_tags}"
  task_definition                    = "${var.task_definition}"
  platform_version                   = "${var.platform_version}"
  scheduling_strategy                = "${var.scheduling_strategy}"
  enable_ecs_managed_tags            = "${var.enable_ecs_managed_tags}"
  deployment_maximum_percent         = "${var.deployment_maximum_percent}"
  health_check_grace_period_seconds  = "${var.health_check_grace_period_seconds}"
  deployment_minimum_healthy_percent = "${var.deployment_minimum_healthy_percent}"

  ordered_placement_strategy {
    type  = "${var.ops_type}"
    field = "${var.ops_field}"
  }

  load_balancer {
    #    elb_name         = "${var.elb_name}"
    container_name   = "${var.container_name}"
    container_port   = "${var.container_port}"
    target_group_arn = "${var.target_group_arn}"
  }

  placement_constraints {
    type       = "${var.pc_type}"
    expression = "${var.pc_expression}"
  }

  deployment_controller {
    type = "${var.dc_type}"
  }

  #  service_registries support pending
}

#resource "aws_ecs_service" "es_daemon" {
#  count = "${var.daemon ? 1 : 0}"
#
#  name                               = "${var.name}"
#  cluster                            = "${var.cluster}"
#  iam_role                           = "${var.iam_role}"
#  launch_type                        = "${var.launch_type}"
#  propagate_tags                     = "${var.propagate_tags}"
#  task_definition                    = "${var.task_definition}"
#  platform_version                   = "${var.platform_version}"
#  scheduling_strategy                = "${var.scheduling_strategy}"
#  enable_ecs_managed_tags            = "${var.enable_ecs_managed_tags}"
#  health_check_grace_period_seconds  = "${var.health_check_grace_period_seconds}"
#  deployment_minimum_healthy_percent = "${var.deployment_minimum_healthy_percent}"
#
#  deployment_controller {
#    type = "${var.dc_type}"
#  }
#
#  ordered_placement_strategy {
#    type  = "${var.ops_type}"
#    field = "${var.ops_field}"
#  }
#
#  # support for ALB, for now.
#  load_balancer {
#    container_name   = "${var.container_name}"
#    container_port   = "${var.container_port}"
#    target_group_arn = "${var.target_group_arn}"
#  }
#
#  placement_constraints {
#    type       = "${var.type}"
#    expression = "${var.expression}"
#  }
#
#  network_configuration {
#    subnets          = "${var.subnets}"
#    security_groups  = "${var.security_groups}"
#    assign_public_ip = "${var.assign_public_ip}"
#  }
#
#  #  service_registries support pending
#}

