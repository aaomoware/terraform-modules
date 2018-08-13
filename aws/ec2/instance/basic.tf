resource "aws_instance" "basic" {
  count = "${var.basic && var.instance_count >= 1 ? var.instance_count : 0}"

  ami                                  = "${var.ami}"
  key_name                             = "${var.key_name}"
  subnet_id                            = "${element(var.subnet_id, count.index)}"
  instance_type                        = "${var.instance_type}"
  vpc_security_group_ids               = ["${var.vpc_security_group_ids}"]

  tags = "${merge(var.tags,
    map("Name", "${var.instance_count > 1 ? "${lookup(var.tags, "Name")}-${format("%02d", count.index + 1)}" : "${lookup(var.tags, "Name")}"})}"
}
