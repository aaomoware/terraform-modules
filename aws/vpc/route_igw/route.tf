resource "aws_route" "igw" {
    count = "${var.igw_count > 0 ? var.igw_count : 0}"

    gateway_id                = "${element(var.gateway_id, count.index)}"
    route_table_id            = "${element(var.route_table_id, count.index)}"
    destination_cidr_block    = "${var.destination_cidr_block}"
}
