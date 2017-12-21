output "vpn_conn_route_vpn_conn_id" {
  value = "${aws_vpn_connection_route.vpn_conn_route.vpn_connection_idk}"
}
output "vpn_conn_route_dest_cidr_block" {
  value = "${aws_vpn_connection_route.vpn_conn_route.destination_cidr_block}"
}
