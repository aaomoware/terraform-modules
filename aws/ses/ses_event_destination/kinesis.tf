#--- kinesis dimension
resource "aws_ses_event_destination" "kinesis" {
  count                  = "${var.kinesis}"

  name                   = "${var.name}"
  enabled                = "${var.enabled}"
  matching_types         = ["${var.matching_types}"]
  configuration_set_name = "${var.configuration_set_name}"

  kinesis_destination = {
    role_arn   = "${var.role_arn}"
    stream_arn = "${var.stream_arn}"
  }
}
