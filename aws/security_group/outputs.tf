output "name_sg_id" {
  value = "${aws_security_group.name.id}"
}
output "name_prefix_sg_id" {
  value = "${aws_security_group.name_prefix.id}"
}

output "name_prefix_skeleton_id" {
  value = "${aws_security_group.name_prefix_skeleton_id.id}"
}
output "name_skeleton_id" {
  value = "${aws_security_group.name_skeleton_id.id}"
}
