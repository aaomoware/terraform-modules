resource "aws_wafregional_ipset" "ipset" {
  name = "${var.name}"

  ip_set_descriptor {
    type = "${var.type}"
    value = "${var.value}"
  }
}
