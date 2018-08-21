resource "aws_dx_hosted_private_virtual_interface" "dhpvi" {
  count = "${var.enaled ? length(var.name) : 0}"

  vlan             = "${element(var.vlan, count.index)}"
  name             = "${element(var.name, count.index)}"
  bgp_asn          = "${element(var.bgp_asn, count.index)}"
  bgp_auth_key     = "${var.bgp_auth_key}"
  connection_id    = "${element(var.connection_id, count.index)}"
  amazon_address   = "${var.amazon_address}"
  address_family   = "${var.address_family}"
  customer_address = "${var.customer_address}"
  owner_account_id = "${var.owner_account_id}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
