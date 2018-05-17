#--Status of other health checks (calculated health check)
resource "aws_route53_health_check" "calculated" {
  count                  = "${var.calculated ? 1 : 0}"
  type                   = "${var.type}"
  invert_healthcheck     = "${var.invert_healthcheck}"
  child_healthchecks     = ["${var.child_healthchecks}"]
  child_health_threshold = "${var.child_health_threshold}"

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
