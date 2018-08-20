variable vlan                  {}
variable name                  {}
variable bgp_asn               {}
variable connection_id         {}
variable address_family        {}
variable owner_account_id      {}
variable route_filter_prefixes {}

variable create               { default = "10m" }
variable delete               { default = "10m" }

variable bgp_auth_key          { default = "" }
variable amazon_address        { default = "" }
variable customer_address      { default = "" }
