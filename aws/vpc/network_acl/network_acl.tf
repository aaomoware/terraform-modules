resource "aws_network_acl" "na" {
  tags       = "${var.tags}"
  vpc_id     = "${var.vpc_id}"
  subnet_ids = ["${var.subnet_ids}"]
}
