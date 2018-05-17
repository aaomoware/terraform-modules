variable fqdn                            { default = "" }
variable tags                            { default = {} type = "" }
variable port                            { default = "" }
variable type                            { default = "" }
variable name                            { default = "" }
variable regions                         { default = [] type = "list" }
variable ip_address                      { default = "" }
variable search_string                   { default = "" }
variable resource_path                   { default = "/" }
variable request_interval                { default = "" }
variable failure_threshold               { default = "" }
variable child_healthchecks              { default = [] type = "list" }
variable cloudwatch_alarm_name           { default = "" }
variable cloudwatch_alarm_region         { default = "" }
variable insufficient_data_health_status { default = "" }

variable enable_sni                      { default = false }
variable calculated                      { default = false }
variable tcp_ip_address                  { default = false }
variable tcp_domain_name                 { default = false }
variable measure_latency                 { default = false }
variable cloudwatch_metric               { default = false }
variable invert_healthcheck              { default = false }
variable http_https_ip_address           { default = false }
variable http_https_domain_name          { default = false }
variable child_health_threshold          { default = 1 }
