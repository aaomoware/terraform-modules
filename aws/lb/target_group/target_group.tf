resource "aws_lb_target_group" "ltga" {
  count = "${var.tg_type == "application" ? 1 : 0}"

  name                 = "${var.name}"
  port                 = "${var.port}"
  tags                 = "${var.tags}"
  vpc_id               = "${var.vpc_id}"
  protocol             = "${var.protocol}"
  stickiness           = "${var.stickiness}"
  slow_start           = "${var.slow_start}"
  target_type          = "${var.target_type}"
  health_check         = "${var.health_check}"
  deregistration_delay = "${var.deregistration_delay}"
}

resource "aws_lb_target_group" "ltgn" {
  count = "${var.tg_type == "network" ? 1 : 0}"

  name                 = "${var.name}"
  port                 = "${var.port}"
  tags                 = "${var.tags}"
  vpc_id               = "${var.vpc_id}"
  protocol             = "${var.protocol}"
  slow_start           = "${var.slow_start}"
  target_type          = "${var.target_type}"
  health_check         = "${var.health_check}"
  proxy_protocol_v2    = "${var.proxy_protocol_v2}"
  deregistration_delay = "${var.deregistration_delay}"
}
