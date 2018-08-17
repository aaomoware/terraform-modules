resource "aws_route_table" "rt_table" {
  count = "${var.rt_count }"

  vpc_id = "${var.vpc_id}"
  tags = "${merge(var.tags, map("Name", "${var.rt_count > 1 ? "${lookup(var.tags, "Name")}-${element(split(",", "var.append"), count.index)}" : "${lookup(var.tags, "Name")}" }"))}"
}
