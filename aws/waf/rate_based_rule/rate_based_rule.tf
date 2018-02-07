resource "aws_waf_rate_based_rule" "base_rule" {
  name        = "${var.name}"
  rate_key    = "${var.rate_key}"
  rate_limit  = "${var.rate_limit}"
  metric_name = "${var.metric_name}"

  predicates {
    type    = "${var.type}"
    data_id = "${var.data_id}"
    negated = "${var.negated}"
  }
}
