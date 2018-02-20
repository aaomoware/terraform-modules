resource "aws_codecommit_trigger" "ct" {
  repository_name = "${var.repository_name}"

  trigger {
    name            = "${var.name}"
    events          = ["${var.events}"]
    branches        = "${var.branches}"
    custom_data     = "${var.custom_data}"
    destination_arn = "${var.destination_arn}"
  }
}
