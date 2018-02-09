resource "aws_waf_xss_match_set" "xms" {
  name = "${var.name}"

  xss_match_tuples {
    text_transformation = "${var.text_transformation}"

    field_to_match {
      type = "${var.type}"
    }
  }
}
