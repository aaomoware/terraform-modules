resource "aws_cloudwatch_log_stream" "cls" {
  name           = "${var.name}"
  log_group_name = "${var.log_group_name}"
}
