variable default                   { default = true }
variable gateway_id                { default = [] type = "list" }
variable instance_id               { default = "" }
variable route_table_id            {}
variable nat_gateway_id            { default = [] type = "list" }
variable network_interface_id      { default = "" }
variable egress_only_gateway_id    { default = "" }
variable destination_cidr_block    { default = "" }
variable vpc_peering_connection_id { default = "" }
