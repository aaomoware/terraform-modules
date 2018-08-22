variable tags                            { default = {} type = "map" }
variable vpc_id                          { default = "" }
variable cidr_block                      { default = [] type = "list" }
variable availability_zone               { default = [] type = "list" }
variable map_public_ip_on_launch         { default = false }
variable assign_ipv6_address_on_creation { default = false }
