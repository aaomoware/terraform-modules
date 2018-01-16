resource "aws_internet_gateway" "int_gtw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Env  = "${var.env}"
    Name = "${var.name}"
  }
}
