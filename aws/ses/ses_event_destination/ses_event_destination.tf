resource "aws_ses_event_destination" "sed" {
  count                  = "${var.sed}"

  name                   = "${var.name}"
  enabled                = "${var.enabled}"
  matching_types         = ["${var.matching_types}"]
  configuration_set_name = "${var.configuration_set_name}"
}
