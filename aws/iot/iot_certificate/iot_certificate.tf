resource "aws_iot_certificate" "ic" {
  csr    = "${var.csr}"
  active = "${var.active}"
}
