resource "aws_waf_rule" "rule" {
  name        = "${var.name}"
  metric_name = "${var.metric_name}"

  predicates {
    type    = "${var.type}"
    data_id = "${var.data_id}"
    negated = "${var.negated}"
  }
}
