resource "aws_lb_listener" "ll" {
  port              = "${var.port}"
  protocol          = "${var.protocol}"
  ssl_policy        = "${var.ssl_policy}"
  default_action    = "${var.default_action}"
  certificate_arn   = "${var.certificate_arn}"
  load_balancer_arn = "${var.load_balancer_arn}"
}
