output "vpn_conn_id" {
  value = "${aws_vpn_connection.vpn_conn.id}"
}
output "vpn_conn_type" {
  value = "${aws_vpn_connection.vpn_conn.type}"
}
output "vpn_conn_vpn_gateway_id" {
  value = "${aws_vpn_connection.vpn_conn.vpn_gateway_id}"
}
output "vpn_conn_tunnel2_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_address}"
}
output "vpn_conn_tunnel2_bgp_asn" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_bgp_asn}"
}
output "vpn_conn_tunnel1_bgp_asn" {
  value = "${aws_vpn_connection.vpn_conn.tunnel1_bgp_asn}"
}
output "vpn_conn_tunnel1_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel1_address}"
}
output "vpn_conn_static_routes_only" {
  value = "${aws_vpn_connection.vpn_conn.static_routes_only}"
}
output "vpn_conn_customer_gateway_id" {
  value = "${aws_vpn_connection.vpn_conn.customer_gateway_id}"
}
output "vpn_conn_tunnel2_bgp_holdtime" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_bgp_holdtime}"
}
output "vpn_conn_tunnel1_preshared_key" {
  value = "${aws_vpn_connection.vpn_conn.tunnel1_preshared_key}"
}
output "vpn_conn_tunnel2_preshared_key" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_preshared_key}"
}
output "vpn_conn_tunnel1_cgw_inside_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel1_cgw_inside_address}"
}
output "vpn_conn_tunnel2_cgw_inside_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_cgw_inside_address}"
}
output "vpn_conn_tunnel2_vgw_inside_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel2_vgw_inside_address}"
}
output "vpn_conn_tunnel1_vgw_inside_address" {
  value = "${aws_vpn_connection.vpn_conn.tunnel1_vgw_inside_address}"
}
output "vpn_conn_customer_gateway_configuration" {
  value = "${aws_vpn_connection.vpn_conn.customer_gateway_configuration}"
}
