variable region                           {}
variable profile                          {}

variable basic_vpc_tags                   { default = {} type = "map" }
variable dns_support_vpc_tags             { default = {} type = "map" }

variable basic_vpc                        {}
variable dns_support_vpc                  {}

variable basic_vpc_cidr_block             {}
variable dns_support_vpc_cidr_block       {}
