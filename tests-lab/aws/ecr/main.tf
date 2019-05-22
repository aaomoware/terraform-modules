module "ecr" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/ecr/ecr_repository"

  name = "${var.name}"
}
