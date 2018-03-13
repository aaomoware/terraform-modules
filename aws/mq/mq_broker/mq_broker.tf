resource "aws_mq_broker" "mb" {

  subnet_ids         = ["${var.subnet_ids}"]
  engine_type        = "${var.engine_type}"
  broker_name        = "${var.broker_name}"
  engine_version     = "${var.engine_version}"
  security_groups    = ["${var.security_groups}"]
  host_instance_type = "${var.host_instance_type}"

  configuration {
    id       = "${var.id}"
    revision = "${var.revision}"
  }

  user {
    groups         = ["${var.groups}"]
    username       = "${var.username}"
    password       = "${var.password}"
    console_access = "${var.console_access}"
  }

  maintenance_window_start_time {
    time_zone    = "${var.time_zone}"
    time_of_day  = "${var.time_of_day}"
    day_of_week  = "${var.day_of_week}"
  }
}
