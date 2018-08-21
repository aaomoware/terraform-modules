variable bgp_auth_key     {}
variable connection_id    {}

variable vlan             { type = "list" }
variable name             { type = "list" }
variable bgp_asn          { type = "list" }
variable owner_account_id { type = "list" }

variable create           { default = "10m" }
variable delete           { default = "10m" }
variable address_family   { default = "ipv4" }

variable amazon_address   { default = "" }
variable customer_address { default = "" }
