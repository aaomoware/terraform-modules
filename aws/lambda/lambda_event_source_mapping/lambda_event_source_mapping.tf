resource "aws_lambda_event_source_mapping" "lesm" {
  enabled           = "${var.enabled}"
  batch_size        = "${var.batch_size}"
  function_name     = "${var.function_name}"
  event_source_arn  = "${var.event_source_arn}"
  starting_position = "${var.starting_position}"
}
