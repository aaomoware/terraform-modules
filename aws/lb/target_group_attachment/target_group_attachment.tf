resource "aws_lb_target_group_attachment" "ltga" {
  port             = "${var.port}"
  target_id        = "${var.target_id}"
  target_group_arn = "${var.target_group_arn}"
}
