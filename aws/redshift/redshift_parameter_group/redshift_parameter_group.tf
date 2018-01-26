resource "aws_redshift_parameter_group" "rpg" {
  name   = "${var.name}"
  family = "${var.family}"

  parameter {
    name  = "${var.par_name_1}"
    value = "${var.par_value_1}"
  }

  parameter {
    name  = "${var.par_name_2}"
    value = "${var.par_value_2}"
  }
}
