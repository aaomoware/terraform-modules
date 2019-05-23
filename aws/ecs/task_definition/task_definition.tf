resource "aws_ecs_task_definition" "ecs_td" {
  cpu                      = "${var.cpu}"
  tags                     = "${var.tags}"
  family                   = "${var.family}"
  volume                   = "${var.volume}"
  memory                   = "${var.memory}"
  network_mode             = "${var.network_mode}"
  task_role_arn            = "${var.task_role_arn}"
  execution_role_arn       = "${var.execution_role_arn}"
  container_definitions    = "${var.container_definitions}"
  placement_constraints    = "${var.placement_constraints}"
  requires_compatibilities = "${var.requires_compatibilities}"
}
