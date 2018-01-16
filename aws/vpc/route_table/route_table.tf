resource "aws_route_table" "rt_table" {
  vpc_id = "${var.vpc_id}"

  tags {
    Env  = "${var.env}"
    Name = "${var.name}"
  }
}
