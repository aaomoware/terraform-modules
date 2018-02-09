resource "aws_waf_sql_injection_match_set" "sims" {
  name = "${var.name}"

  sql_injection_match_tuples {
    text_transformation = "${var.text_transformation}"

    field_to_match {
      data = "${var.data}"
      type = "${var.type}"
    }
  }
}
