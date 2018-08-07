output "id" {
  value = "${aws_eip.eip.id}"
}
output "private_ip" {
  value = "${aws_eip.eip.private_ip}"
}
output "associate_with_private_ip" {
  value = "${aws_eip.eip.associate_with_private_ip}"
}
output "public_ip" {
  value = "${aws_eip.eip.public_ip}"
}
output "instance" {
  value = "${aws_eip.eip.instance}"
}
output "network_interface" {
  value = "${aws_eip.eip.network_interface}"
}
