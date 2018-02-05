#--- cloudwatch dimension
resource "aws_ses_event_destination" "cloudwatch" {
  count                  = "${var.cloudwatch}"

  name                   = "${var.name}"
  enabled                = "${var.enabled}"
  matching_types         = ["${var.matching_types}"]
  configuration_set_name = "${var.configuration_set_name}"

  cloudwatch_destination = {
    value_source   = "${var.value_source}"
    default_value  = "${var.default_value}"
    dimension_name = "${var.dimension_name}"
  }
}
