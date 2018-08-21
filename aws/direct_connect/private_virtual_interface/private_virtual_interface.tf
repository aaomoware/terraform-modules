resource "aws_dx_private_virtual_interface" "dpvi" {
  connection_id = "${var.connection_id}"

  tags           = "${var.tags}"
  name           = "${var.name}"
  vlan           = "${var.vlan}"
  bgp_asn        = "${var.bgp_asn}"
  bgp_auth_key   = "${var.bgp_auth_key}"
  dx_gateway_id  = "${var.dx_gateway_id}"
  connection_id  = "${var.connection_id}"
  address_family = "${var.address_family}"
  vpn_gateway_id = "${var.vpn_gateway_id}"
  amazon_address = "${var.amazon_address}"
  customer_address = "${var.customer_address}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
