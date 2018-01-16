resource "aws_service_discovery_public_dns_namespace" "sdpdn" {
  name = "${var.name}"
  description = "${var.description}"
}
