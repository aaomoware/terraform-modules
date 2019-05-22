module "ecr" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/ecr/ecr_repository"

  name = "${var.name}"
}

module "ecr_policy" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/ecr/ecr_lifecycle_policy"

  policy     = "${var.policy}"
  repository = "${module.ecr.name}"
}
