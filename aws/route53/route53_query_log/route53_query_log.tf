resource "aws_route53_query_log" "rql" {
  zone_id                  = "${var.zone_id}"
  cloudwatch_log_group_arn = "${var.cloudwatch_log_group_arn}"
}
