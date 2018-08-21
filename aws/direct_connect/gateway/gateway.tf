resource "aws_dx_gateway" "dg" {
  name = "${var.name}"
  amazon_side_asn = "${var.amazon_side_asn}"

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
