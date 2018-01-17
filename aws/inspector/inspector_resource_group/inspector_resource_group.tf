resource "aws_inspector_resource_group" "irg" {
  tags {
    Env  = "${var.env}"
    Name = "${var.name}"
  }
}
