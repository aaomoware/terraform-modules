resource "aws_subnet" "subnets" {
  count                           = "${length(var.cidr_block)}"
  vpc_id                          = "${var.vpc_id}"
  cidr_block                      = "${element(var.cidr_block, count.index)}"
  availability_zone               = "${element(var.availability_zone, count.index)}"
  map_public_ip_on_launch         = "${var.map_public_ip_on_launch}"
  assign_ipv6_address_on_creation = "${var.assign_ipv6_address_on_creation}"

  tags = "${merge(var.tags, map("Name", "${length(var.cidr_block) > 1 ? "${var.name}-${element(var.availability_zone, count.index)}" : "${lookup(var.tags, "Name")}" }"))}"
}
