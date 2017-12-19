variable env                              { default = "mars" }
variable cidr_block                       {}
variable instance_tenancy                 { default = "default" }
variable assign_generated_ipv6_cidr_block { default = false }

variable basic_vpc                        { default = false }
variable dns_support_vpc                  { default = false }
variable classiclink_vpc                  { default = false }

variable enable_dns_support               { default = true }
variable enable_classiclink               { default = true }
variable enable_dns_hostnames             { default = true }
variable enable_classiclink_dns_support   { default = false }
