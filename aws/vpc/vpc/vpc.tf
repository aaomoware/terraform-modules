#--basic, vpc
resource "aws_vpc" "basic_vpc" {
  count = "${var.basic_vpc ? 1 : 0}"

  tags = "${var.tags}"
  cidr_block = "${var.cidr_block}"
  instance_tenancy = "${var.instance_tenancy}"
  enable_dns_support = "${var.enable_dns_support}"
  enable_classiclink = "${var.enable_classiclink}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_classiclink_dns_support = "${var.enable_classiclink_dns_support}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

}


#-- dns support, vpc
resource "aws_vpc" "dns_support_vpc" {
  count = "${var.dns_support_vpc ? 1 : 0}"

  cidr_block = "${var.cidr_block}"
  enable_dns_support = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  instance_tenancy = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags = "${var.tags}"
}


#-- classiclink, vpc
resource "aws_vpc" "classiclink_vpc" {
  count = "${var.classiclink_vpc ? 1 :0}"

  cidr_block = "${var.cidr_block}"

  instance_tenancy = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags = "${var.tags}"
}
