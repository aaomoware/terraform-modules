resource "aws_waf_web_acl" "wwa" {
  name        = "${var.name}"
  metric_name = "${var.metric_name}"

  default_action {
    type = "${var.default_action_type}"
  }

  rules {
    action {
      type = "${var.rules_action_type}"
    }

    type     = "${var.rules_type}"
    rule_id  = "${var.rule_id}"
    priority = "${var.rules_priority}"
  }
}
