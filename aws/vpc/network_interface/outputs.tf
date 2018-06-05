output "tags" {
  value = "${aws_network_interface.ni.tags}"
}
output "subnet_id" {
  value = "${aws_network_interface.ni.subnet_id}"
}
output "attachment" {
  value = "${aws_network_interface.ni.attachment}"
}
output "description" {
  value = "${aws_network_interface.ni.description}"
}
output "private_ips" {
  value = "${aws_network_interface.ni.private_ips}"
}
output "security_groups" {
  value = "${aws_network_interface.ni.security_grous}"
}
output "source_dest_check" {
  value = "${aws_network_interface.ni.source_dest_check}"
}
