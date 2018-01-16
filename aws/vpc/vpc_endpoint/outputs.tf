output "endpoint_id" {
  value = "${aws_vpc_endpoint.endpoint.id}"
}
output "endpoint_cidr_blocks" {
  value = "${aws_vpc_endpoint.endpoint.cidr_blocks}"
}
output "endpoint_prefix_list_id" {
  value = "${aws_vpc_endpoint.endpoint.prefix_list_id}"
}
