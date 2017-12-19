#--basic, vpc
resource "aws_vpc" "basic_vpc" {
  count = "${var.basic_vpc ? 1 : 0}"
  cidr_block = "${var.cidr_block}"

  instance_tenancy = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags {
    Environment = "${var.env}"
    Name = "basic-vpc-${var.env}"
  }
}


#-- dns support, vpc
resource "aws_vpc" "dns_support_vpc" {
  count = "${var.dns_support_vpc ? 1 : 0}"

  cidr_block = "${var.cidr_block}"
  enable_dns_support = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  instance_tenancy = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags {
    Environment = "${var.env}"
    Name = "dns-support-vpc-${var.env}"
  }
}


#-- classiclink, vpc
resource "aws_vpc" "classiclink_vpc" {
  count = "${var.classiclink_vpc ? 1 :0}"

  cidr_block = "${var.cidr_block}"
  enable_classiclink = "${var.enable_classiclink}"
  enable_classiclink_dns_support = "${var.enable_classiclink_dns_support}"

  instance_tenancy = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags {
    Environment = "${var.env}"
    Name = "classiclink-vpc-${var.env}"
  }
}
