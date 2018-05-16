resource "aws_internet_gateway" "int_gtw" {
  vpc_id = "${var.vpc_id}"

  tags = "${var.tags}"
}
