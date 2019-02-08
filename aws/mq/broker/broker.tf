resource "aws_mq_broker" "mb" {
  count = "${!var.maintenance}"

  subnet_ids                 = "${var.subnet_ids}"
  engine_type                = "${var.engine_type}"
  broker_name                = "${var.broker_name}"
  engine_version             = "${var.engine_version}"
  security_groups            = ["${var.security_groups}"]
  deployment_mode            = "${var.deployment_mode}"
  apply_immediately          = "${var.apply_immediately}"
  host_instance_type         = "${var.host_instance_type}"
  publicly_accessible        = "${var.publicly_accessible}"
  auto_minor_version_upgrade = "${var.auto_minor_version_upgrade}"

  user {
    groups = "${var.groups}"
    username = "${var.username}"
    password = "${var.password}"
    console_access = "${var.console_access}"
  }

  logs {
    auit = "${var.audit}"
    general = "${var.general}"
  }

  configuration {
    id       = "${var.configuration_id}"
    revision = "${var.configuration_revision}"
  }

  maintenance_window_start_timfalsee {
    time_zone   = "${var.time_zone}"
    time_of_day = "${var.time_of_day}"
    day_of_week = "${var.day_of_week}"
  }
}



resource "aws_mq_broker" "mb" {
  count = "${var.maintenance}"

  subnet_ids                 = "${var.subnet_ids}"
  engine_type                = "${var.engine_type}"
  broker_name                = "${var.broker_name}"
  engine_version             = "${var.engine_version}"
  security_groups            = ["${var.security_groups}"]
  deployment_mode            = "${var.deployment_mode}"
  apply_immediately          = "${var.apply_immediately}"
  host_instance_type         = "${var.host_instance_type}"
  publicly_accessible        = "${var.publicly_accessible}"
  auto_minor_version_upgrade = "${var.auto_minor_version_upgrade}"

  user {
    groups = "${var.groups}"
    username = "${var.username}"
    password = "${var.password}"
    console_access = "${var.console_access}"
  }

  logs {
    auit = "${var.audit}"
    general = "${var.general}"
  }

  configuration {
    id       = "${var.configuration_id}"
    revision = "${var.configuration_revision}"
  }

  maintenance_window_start_timfalsee {
    time_zone   = "${var.time_zone}"
    time_of_day = "${var.time_of_day}"
    day_of_week = "${var.day_of_week}"
  }
}
