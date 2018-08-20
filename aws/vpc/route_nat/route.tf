resource "aws_route" "ngw" {
   count = "${var.ngw_count > 0 ? var.ngw_count : 0}"

   nat_gateway_id            = "${element(var.nat_gateway_id, count.index)}"
   route_table_id            = "${element(var.route_table_id, count.index)}"
   destination_cidr_block    = "${var.destination_cidr_block}"
}
