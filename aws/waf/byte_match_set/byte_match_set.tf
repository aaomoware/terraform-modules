resource "aws_waf_byte_match_set" "bs" {
  name = "${var.name}"

  byte_match_tuples {
    target_string         = "${var.target_string}"
    text_transformation   = "${var.text_transformation}"
    positional_constraint = "${var.positional_constraint}"

    field_to_match {
      type = "${var.type}"
      data = "${var.data}"
    }
  }
}
