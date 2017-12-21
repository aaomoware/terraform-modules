#---State of CloudWatch alarm
resource "aws_route53_health_check" "cloudwatch_metric" {
  count                           = "${var.cloudwatch_metric ? 1 : 0}"
  type                            = "${var.type}"
  invert_healthcheck              = "${var.invert_healthcheck}"
  cloudwatch_alarm_name           = "${var.cloudwatch_alarm_name}"
  cloudwatch_alarm_region         = "${var.cloudwatch_alarm_region}"
  insufficient_data_health_status = "${var.insufficient_data_health_status}"

  tags {
    Name = "${var.name}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
