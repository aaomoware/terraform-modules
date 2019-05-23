module "fort" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/ecs/cluster"

  name = "${var.name}"
  tags = "${local.tags["ecs"]}"
}
