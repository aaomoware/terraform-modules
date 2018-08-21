resource "aws_route" "ngw" {
   count = "${var.rt_count > 0 ? var.rt_count : 0}"

   route_table_id            = "${element(var.route_table_id, count.index)}"
   destination_cidr_block    = "${var.destination_cidr_block}"
   vpc_peering_connection_id = "${var.vpc_peering_connection_id}"
}
