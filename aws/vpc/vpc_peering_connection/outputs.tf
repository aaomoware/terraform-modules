output "vpc_peering_conn_id" {
  value = "${aws_vpc_peering_connection.vpc_peering_conn.id}"
}
output "vpc_peering_conn_accept_status" {
  value = "${aws_vpc_peering_connection.vpc_peering_conn.accept_status}"
}
