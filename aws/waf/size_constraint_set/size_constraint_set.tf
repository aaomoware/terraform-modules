resource "aws_waf_size_constraint_set" "scs" {
  name = "${var.name}"

  size_constraints {
    size                = "${var.size}"
    text_transformation = "${var.text_transformation}"
    comparison_operator = "${var.comparison_operator}"

    field_to_match {
      data = "${var.data}"
      type = "${var.type}"
    }
  }
}
