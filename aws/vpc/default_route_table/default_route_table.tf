resource "aws_default_route_table" "drt" {

  tags                   = "${var.tags}"
  route                  = "${var.routes}"
  propagating_vgws       = "${var.propagating_vgws}"
  default_route_table_id = "${var.default_route_table_id}"

}
