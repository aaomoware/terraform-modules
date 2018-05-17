output "eip_a_public_ip" {
  value = "${aws_eip_association.eip_association.public_ip}"
}
output "eip_a_instance_id" {
  value = "${aws_eip_association.eip_association.instance_id}"
}
output "eip_a_allocation_id" {
  value = "${aws_eip_association.eip_association.allocation_id}"
}
output "eip_a_private_ip_address" {
  value = "${aws_eip_association.eip_association.private_ip_address}"
}
output "eip_a_allow_reassociation" {
  value = "${aws_eip_association.eip_association.allow_reassociation}"
}
output "eip_a_network_interface_id" {
  value = "${aws_eip_association.eip_association.network_interface_id}"
}
