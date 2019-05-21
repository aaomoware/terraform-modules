variable tags {
  type = "map"

  default = {}
}

variable vpc_id {}
variable subnet_ids {}

variable dns_support {
  default = "enable"
}

variable ipv6_support {
  default = "disable"
}

variable transit_gateway_id {}

variable transit_gateway_default_route_table_association {
  default = true
}

variable transit_gateway_default_route_table_propagation {
  default = true
}
