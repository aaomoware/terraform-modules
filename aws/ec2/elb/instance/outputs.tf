# basic
output "basic_instance_id" {
  value = "${aws_instance.basic.*.id}"
}
output "basic_instance_availability_zone" {
  value = "${aws_instance.basic.*.availability_zone}"
}
output "basic_instance_placement_group" {
  value = "${aws_instance.basic.*.placement_group}"
}
output "basic_instance_key_name" {
  value = "${aws_instance.basic.*.key_name}"
}
output "basic_instance_password_data" {
  value = "${aws_instance.basic.*.password_data}"
}
output "basic_instance_public_dns" {
  value = "${aws_instance.basic.*.public_dns}"
}
output "basic_instance_public_ip" {
  value = "${aws_instance.basic.*.public_ip}"
}
output "basic_instance_ipv6_addresses" {
  value = "${aws_instance.basic.*.ipv6_addresses}"
}
output "basic_instance_network_interface_id" {
  value = "${aws_instance.basic.*.network_interface_id}"
}
output "basic_instance_primary_network_interface_id" {
  value = "${aws_instance.basic.*.network_interface_id}"
}
output "basic_instance_private_dns" {
  value = "${aws_instance.basic.*.private_dns}"
}
output "basic_instance_private_ip" {
  value = "${aws_instance.basic.*.private_ip}"
}
# output "basic_instance_security_groups" {
#   value = "${element(concat(aws_instance.basic.*.security_groups, list("")), 0)}"
# }
# output "basic_instance_vpc_security_groups_ids" {
#   value = "${element(concat(aws_instance.basic.*.vpc_security_groups_ids, list("")), 0)}"
# }
output "basic_instance_subnet_id" {
  value = "${element(concat(aws_instance.basic.*.subnet_id, list("")), 0)}"
}
# output "basic_instance_credit_specification" {
#   value = "${aws_instance.basic.*.credit_specification}"
# }


# network
output "network_instance_id" {
  value = "${element(concat(aws_instance.network.*.id, list("")), 0)}"
}
output "network_instance_availability_zone" {
  value = "${element(concat(aws_instance.network.*.availability_zone, list("")), 0)}"
}
output "network_instance_placement_group" {
  value = "${element(concat(aws_instance.network.*.placement_group, list("")), 0)}"
}
output "network_instance_key_name" {
  value = "${element(concat(aws_instance.network.*.key_name, list("")), 0)}"
}
output "network_instance_password_data" {
  value = "${element(concat(aws_instance.network.*.password_data, list("")), 0)}"
}
output "network_instance_public_dns" {
  value = "${element(concat(aws_instance.network.*.public_dns, list("")), 0)}"
}
output "network_instance_public_ip" {
  value = "${element(concat(aws_instance.network.*.public_ip, list("")), 0)}"
}
output "network_instance_ipv6_addresses" {
  value = "${aws_instance.network.*.ipv6_addresses}"
}
output "network_instance_network_interface_id" {
  value = "${element(concat(aws_instance.network.*.network_interface_id, list("")), 0)}"
}
output "network_instance_primary_network_interface_id" {
  value = "${element(concat(aws_instance.network.*.network_interface_id, list("")), 0)}"
}
output "network_instance_private_dns" {
  value = "${element(concat(aws_instance.network.*.private_dns, list("")), 0)}"
}
output "network_instance_private_ip" {
  value = "${element(concat(aws_instance.network.*.private_ip, list("")), 0)}"
}
# output "network_instance_security_groups" {
#   value = "${element(concat(aws_instance.network.*.security_groups, list("")), 0)}"
# }
# output "network_instance_vpc_security_groups_ids" {
#   value = "${element(concat(aws_instance.network.*.vpc_security_groups_ids, list("")), 0)}"
# }
output "network_instance_subnet_id" {
  value = "${element(concat(aws_instance.network.*.subnet_id, list("")), 0)}"
}
output "network_instance_credit_specification" {
  value = "${aws_instance.network.*.credit_specification}"
}
