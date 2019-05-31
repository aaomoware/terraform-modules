resource "aws_api_gateway_api_key" "MyDemoApiKey" {
  name        = "${var.name}"
  value       = "${var.value}"
  enabled     = "${var.enabled}"
  stage_key   = "${var.stage_key}"
  description = "${var.description}"
}
