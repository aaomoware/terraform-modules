output "lsia_arn" {
  value = "${aws_lightsail_static_ip_attachment.lsia.arn}"
}
output "lsia_ip_address" {
  value = "${aws_lightsail_static_ip_attachment.lsia.ip_address}"
}
output "lsia_support_code" {
  value = "${aws_lightsail_static_ip_attachment.lsia.support_code}"
}
