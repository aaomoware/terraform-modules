#---tcp ip address endpoint
resource "aws_route53_health_check" "tcp_ip_address" {
  count             = "${var.tcp_ip_address}"
  port              = "${var.port}"
  type              = "${var.type}"
  regions           = ["${var.regions}"]
  ip_address        = "${var.ip_address}"
  measure_latency   = "${var.measure_latency}"
  request_interval  = "${var.request_interval}"
  failure_threshold = "${var.failure_threshold}"
  invert_healthcheck = "${var.invert_healthcheck}"

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}

#--tcp domain name endpoint
resource "aws_route53_health_check" "tcp_domain_name" {
  count             = "${var.tcp_domain_name}"
  port              = "${var.port}"
  fqdn              = "${var.fqdn}"
  type              = "${var.type}"
  regions           = ["${var.regions}"]
  measure_latency   = "${var.measure_latency}"
  request_interval  = "${var.request_interval}"
  failure_threshold = "${var.failure_threshold}"
  invert_healthcheck = "${var.invert_healthcheck}"

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
