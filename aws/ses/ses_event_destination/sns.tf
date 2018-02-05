#--- kinesis dimension
resource "aws_ses_event_destination" "sns" {
  count                  = "${var.sns}"

  name                   = "${var.name}"
  enabled                = "${var.enabled}"
  matching_types         = ["${var.matching_types}"]
  configuration_set_name = "${var.configuration_set_name}"

  sns_destination = {
    topic_arn = "${var.topic_arn}"
  }
}
