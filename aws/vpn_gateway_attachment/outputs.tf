output "vpn_attachment_vpc_id" {
  value = "${aws_vpn_gateway_attachment.vpn_attachment.vpc_id}"
}
output "vpn_attachment_vpn_gateway_id" {
  value = "${aws_vpn_gateway_attachment.vpn_attachment.vpn_gateway_id}"
}
