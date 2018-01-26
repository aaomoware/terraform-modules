resource "aws_ssm_maintenance_window_target" "ssmmwt" {
  window_id          = "${var.window_id}"
  resource_type      = "${var.resource_type}"
  owner_information  = "${var.owner_information}"

  targets {
    key    = "${var.key}"
    values = ["${var.values}"]
  }
}
