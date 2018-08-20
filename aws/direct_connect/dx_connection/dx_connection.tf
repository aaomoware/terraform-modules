resource "aws_dx_connection" "dxc" {
  name = "${var.name}"
  tags = "${var.tags}"
  location = "${var.location}"
  bandwidth = "${var.bandwidth}"
}
