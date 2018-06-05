resource "aws_egress_only_internet_gateway" "eoig" {
  vpc_id = "${var.vpc_id}"
}
