resource "aws_service_discovery_private_dns_namespace" "sdpdn" {
  vpc = "${var.vpc}"
  name = "${var.name}"
  description = "${var.description}"
}
