output "status" {
  value = "${aws_network_interface_attachment.nia.status}"
}
output "instance_id" {
  value = "${aws_network_interface_attachment.nia.instance_id}"
}
output "attachment_id" {
  value = "${aws_network_interface_attachment.nia.attachment_id}"
}
output "network_interface_id" {
  value = "${aws_network_interface_attachment.nia.network_interface_id}"
}
