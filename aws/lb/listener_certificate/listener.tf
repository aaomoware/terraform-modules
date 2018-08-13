resource "aws_lb_listener_certificate" "llc" {
  listener_arn    = "${var.listener_arn}"
  certificate_arn = "${var.certificate_arn}"
}
