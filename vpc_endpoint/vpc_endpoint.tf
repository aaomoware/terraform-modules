resource "aws_vpc_endpoint" "endpoint" {
  vpc_id          = "${var.vpc_id}"
  policy          = "${var.policy}"
  service_name    = "${var.service_name}"
  route_table_id  = "${var.route_table_id}"

  lifecycle {
    create_before_destroy = true
  }
}
