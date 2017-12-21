resource "aws_vpn_connection" "vpn_conn" {
  type                = "${var.type}"
  vpn_gateway_id      = "${var.vpn_gateway_id}"
  static_routes_only  = "${var.static_routes_only}"
  customer_gateway_id = "${var.customer_gateway_id}"

  tags {
    Env = "${var.env}"
  }
}
