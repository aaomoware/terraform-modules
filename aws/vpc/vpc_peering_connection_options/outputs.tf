output "requester_id" {
  value = "${element(concat(aws_vpc_peering_connection_options.requester.*.id, list("")), 0)}"
}
output "accepter_id" {
  value = "${element(concat(aws_vpc_peering_connection_options.accepter.*.id, list("")), 0)}"
}
