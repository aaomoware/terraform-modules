resource "aws_dx_connection_association" "dca" {
  lag_id = "${var.lag_id}"
  connection_id = "${var.connection_id}"
}
