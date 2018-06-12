output "throttle_settings_rate_limit" {
  value = "${aws_api_gateway_account.aga.throttle_settings.rate_limit}"
}
output "throttle_settings_burst_limit" {
  value = "${aws_api_gateway_account.aga.throttle_settings.burst_limit}"
}
