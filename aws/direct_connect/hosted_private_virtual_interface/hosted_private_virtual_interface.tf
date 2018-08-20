resource "aws_dx_hosted_private_virtual_interface" "dhpvi" {

  vlan             = "${var.vlan}"
  name             = "${var.name}"
  bgp_asn          = "${var.bgp_asn}"
  bgp_auth_key     = "${var.bgp_auth_key}"
  connection_id    = "${var.connection_id}"
  amazon_address   = "${var.amazon_address}"
  address_family   = "${var.address_family}"
  customer_address = "${var.customer_address}"
  owner_account_id = "${var.owner_account_id}"

  timeout {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
