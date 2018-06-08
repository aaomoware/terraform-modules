resource "aws_db_option_group" "dog" {
  tags                     = "${var.tags}"
  name                     = "${var.name}"
  option                   = "${var.option}"
  engine_name              = "${var.engine_name}"
  major_engine_version     = "${var.major_engine_version}"
  option_group_description = "${var.option_group_description}"

  timeout {
    delete = "${var.delete}"
  }
}
