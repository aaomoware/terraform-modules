resource "aws_lb_listener" "ll" {
  port              = "${var.port}"
  protocol          = "${var.protocol}"
  ssl_policy        = "${var.ssl_policy}"
  certificate_arn   = "${var.certificate_arn}"
  load_balancer_arn = "${var.load_balancer_arn}"

  default_action {
    type             = "${var.type}"
    target_group_arn = "${var.target_group_arn}"
  }
}
