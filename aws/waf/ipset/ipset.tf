resource "aws_waf_ipset" "ipset" {
  name = "${var.name}"

  ip_set_descriptors {
    type = "${var.type}"
    value = "${var.value}"
  }
}
