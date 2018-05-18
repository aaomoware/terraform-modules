resource "consul_keys" "key" {
  token      = "${var.token}"
  datacenter = "${var.datacenter}"

  key {
    path   = "${var.key_path}"
    value  = "${var.key_value}"
    delete = "${var.key_delete}"
  }
}
