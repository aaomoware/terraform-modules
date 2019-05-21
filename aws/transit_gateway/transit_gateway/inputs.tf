variable tags {
  type = "map"

  default = {}
}

variable description {}

variable dns_support {
  default = "enable"
}

variable amazon_side_asn {
  default = 64512
}

variable vpn_ecmp_support {
  default = "enable"
}

variable auto_accept_shared_attachments {
  default = "disable"
}

variable default_route_table_association {
  default = "enable"
}

variable default_route_table_propagation {
  default = "enable"
}
