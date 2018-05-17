#---http(s) domain anme health-check
resource "aws_route53_health_check" "http_https_domain_name" {
  count              = "${var.http_https_domain_name}"
  fqdn               = "${var.fqdn}"
  port               = "${var.port}"
  type               = "${var.type}"
  regions            = ["${var.regions}"]
  enable_sni         = "${var.enable_sni}"
  search_string      = "${var.search_string}"
  resource_path      = "${var.resource_path}"
  measure_latency    = "${var.measure_latency}"
  request_interval   = "${var.request_interval}"
  failure_threshold  = "${var.failure_threshold}"
  invert_healthcheck = "${var.invert_healthcheck}"

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}


#---http(s) ip address health-check
resource "aws_route53_health_check" "http_https_ip_address" {
  count              = "${var.http_https_ip_address}"
  port               = "${var.port}"
  type               = "${var.type}"
  regions            = ["${var.regions}"]
  ip_address         = "${var.ip_address}"
  enable_sni         = "${var.enable_sni}"
  search_string      = "${var.search_string}"
  resource_path      = "${var.resource_path}"
  measure_latency    = "${var.measure_latency}"
  request_interval   = "${var.request_interval}"
  failure_threshold  = "${var.failure_threshold}"
  invert_healthcheck = "${var.invert_healthcheck}"

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
