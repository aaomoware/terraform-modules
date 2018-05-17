output "eip_a_public_ip" {
  value = "${aws_eip_association.eip_assoc.public_ip}"
}
output "eip_a_instance_id" {
  value = "${aws_eip_association.eip_assoc.instance_id}"
}
output "eip_a_allocation_id" {
  value = "${aws_eip_association.eip_assoc.allocation_id}"
}
output "eip_a_private_ip_address" {
  value = "${aws_eip_association.eip_assoc.private_ip_address}"
}
output "eip_a_allow_reassociation" {
  value = "${aws_eip_association.eip_assoc.allow_reassociation}"
}
output "eip_a_network_interface_id" {
  value = "${aws_eip_association.eip_assoc.network_interface_id}"
}
