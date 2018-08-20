
resource "aws_dx_public_virtual_interface" "dpvi" {

  tags           = "${var.tags}"
  name           = "${var.name}"
  vlan           = "${var.vlan}"
  bgp_asn        = "${var.bgp_asn}"
  bgp_auth_key   = "${var.bgp_auth_key}"
  connection_id  = "${var.connection_id}"
  address_family = "${var.address_family}"

  customer_address = "${var.customer_address}"
  amazon_address   = "${var.amazon_address}"
  route_filter_prefixes = ["${var.route_filter_prefixes}"]

  timeout {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
