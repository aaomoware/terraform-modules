resource "aws_flow_log" "flow_log" {
  vpc_id         = "${var.vpc_id}"
  traffic_type   = "${var.traffic_type}"
  iam_role_arn   = "${var.iam_role_arn}"
  log_group_name = "${var.log_group_name}"
}
