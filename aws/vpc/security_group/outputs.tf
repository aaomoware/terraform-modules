output "name_sg_id" {
  value = "${element(concat(aws_security_group.name.*.id, list("")), 0)}"
}
output "name_prefix_sg_id" {
  value = "${element(concat(aws_security_group.name_prefix.*.id, list("")), 0)}"
}

output "name_skeleton_id" {
  value = "${element(concat(aws_security_group.name_skeleton.*.id, list("")), 0)}"
}
output "name_prefix_skeleton_id" {
  value = "${element(concat(aws_security_group.name_prefix_skeleton.*.id, list("")), 0)}"
}
