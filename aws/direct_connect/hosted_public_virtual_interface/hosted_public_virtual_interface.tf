resource "aws_dx_hosted_public_virtual_interface" "dhpvi" {

  name           = "${var.name}"
  vlan           = "${var.vlan}"
  bgp_asn        = "${var.bgp_asn}"
  connection_id  = "${var.connection_id}"
  address_family = "${var.address_family}"

  amazon_address   = "${var.amazon_address}"
  customer_address = "${var.customer_address}"
  route_filter_prefixes = ["${var.route_filter_prefixes}"]

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
