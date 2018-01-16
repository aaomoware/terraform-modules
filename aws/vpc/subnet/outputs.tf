output "subnets_id" {
  value = "${aws_subnet.subnets.*.id}"
}
output "subnets_vpc_id" {
  value = "${aws_subnet.subnets.*.vpc_id}"
}
output "subnets_cidr_block" {
  value = "${aws_subnet.subnets.*.cidr_block}"
}
output "subnets_availability_zone" {
  value = "${aws_subnet.subnets.*.availability_zone}"
}
