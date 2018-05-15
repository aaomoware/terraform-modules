#-- vpc id
output "basic_vpc_id" {
  value = "${aws_vpc.basic_vpc.0.id}"
}
output "dns_support_vpc_id" {
  value = "${aws_vpc.dns_support_vpc.0.id}"
}
output "classiclink_vpc_id" {
  value = "${aws_vpc.classiclink_vpc.0.id}"
}

#-- main_route_table_id
output "basic_vpc_m_r_t_id" {
  value = "${aws_vpc.basic_vpc.0.main_route_table_id}"
}
output "dns_support_m_r_t_id" {
  value = "${aws_vpc.dns_support_vpc.0.main_route_table_id}"
}
output "classiclink_m_r_t_id" {
  value = "${aws_vpc.classiclink_vpc.0.main_route_table_id}"
}

#-- default_network_acl_id
output "basic_vpc_d_n_acl_id" {
  value = "${aws_vpc.basic_vpc.0.default_network_acl_id}"
}
output "dns_support_d_n_acl_id" {
  value = "${aws_vpc.dns_support_vpc.0.default_network_acl_id}"
}
output "classiclink_d_n_acl_id" {
  value = "${aws_vpc.classiclink_vpc.0.default_network_acl_id}"
}

#-- default_security_group_id
output "basic_vpc_d_security_grp_id" {
  value = "${aws_vpc.basic_vpc.0.default_security_group_id}"
}
output "dns_support_d_security_grp_id" {
  value = "${aws_vpc.dns_support_vpc.0.default_security_group_id}"
}
output "classiclink_d_security_grp_id" {
  value = "${aws_vpc.classiclink_vpc.0.default_security_group_id}"
}
