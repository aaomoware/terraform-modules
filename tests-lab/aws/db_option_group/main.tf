module "db_option_group" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/rds/db_option_group"

  name = "${var.names}"
  options = "${var.options}"
  engine_name = "${var.engine_name}"
  major_engine_version = "${var.major_engine_version}"
}
