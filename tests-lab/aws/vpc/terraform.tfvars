region = "eu-west-1"

basic_vpc = true
dns_support_vpc = true

basic_vpc_tags = {
  Environment = "test"
  Resource = "basic_vpc"
  Name = "basic_vpc"
}
dns_support_vpc_tags = {
  Environment = "test"
  Resource = "dns_support_vpc"
  Name = "dns_support_vpc"
}

basic_vpc_cidr_block = "10.12.0.0/16"
dns_support_vpc_cidr_block = "10.13.0.0/16"
