module "ecs_td" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/ecs/task_definition"

  tags                  = "${local.tags["ecs_td"]}"
  family                = "${var.family}"
  container_definitions = "${file("definitions/aws.json")}"
}
