output "dhcp_options" {
  value = "${aws_vpc_dhcp_options.dhcp_options.id}"
}
