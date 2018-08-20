resource "aws_dx_lag" "dl" {

  name = "${var.name}"
  location = "${var.location}"
  force_destroy = "${var.force_destroy}"
  number_of_connections = "${var.number_of_connections}"
  connections_bandwidth = "${var.connections_bandwidth}"
}
