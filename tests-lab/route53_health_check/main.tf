module "tcp_ip_address" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_health_check"

  port                  = 53
  type                  = "TCP"
  name                  = "tcp_ip_address"
  ip_address            = "8.8.8.8"
  tcp_ip_address        = true
  measure_latency       = true
  request_interval      = 30
  failure_threshold     = 1
}

module "tcp_domain_name" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_health_check"

  port                  = 80
  type                  = "TCP"
  name                  = "tcp_domain_name"
  fqdn                  = "duckduckgo.com"
  tcp_domain_name       = true
  measure_latency       = true
  request_interval      = 30
  failure_threshold     = 1
}

module "http_ip_address" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_health_check"

  port                  = 80
  type                  = "HTTP"
  name                  = "http_ip_address"
  ip_address            = "176.34.131.233"
  measure_latency       = true
  request_interval      = 30
  failure_threshold     = 1
  http_https_ip_address = true
}


module "https_domain_name" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_health_check"

  port                   = 443
  type                   = "HTTPS"
  name                   = "https_domain_name"
  fqdn                   = "duckduckgo.com"
  measure_latency        = true
  request_interval       = 30
  failure_threshold      = 1
  http_https_domain_name = true
}


module "http_domain_name" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_health_check"

  port                   = 80
  type                   = "HTTP"
  name                   = "http_domain_name"
  fqdn                   = "duckduckgo.com"
  measure_latency        = true
  request_interval       = 30
  failure_threshold      = 1
  http_https_domain_name = true
}
