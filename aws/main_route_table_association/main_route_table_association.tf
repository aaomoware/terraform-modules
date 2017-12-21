resource "aws_main_route_table_association" "main_rt_assoc" {
  vpc_id         = "${aws_vpc.foo.id}"
  route_table_id = "${aws_route_table.bar.id}"
}
