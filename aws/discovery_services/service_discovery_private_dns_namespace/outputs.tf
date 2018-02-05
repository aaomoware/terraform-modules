output "sdpdn_id" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.id}"
}
output "sdpdn_arn" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.arn}"
}
output "sdpdn_hosted_zone" {
  value = "${aws_service_discovery_private_dns_namespace.sdpdn.hosted_zone}"
}
