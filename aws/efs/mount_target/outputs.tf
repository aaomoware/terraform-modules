output "id" {
  value = "${element(concat(aws_efs_mount_target.emt.*.id, list("")), 0)}"
}
output "dns_name" {
  value = "${element(concat(aws_efs_mount_target.emt.*.dns_name, list("")), 0)}"
}
output "file_system_arn" {
  value = "${element(concat(aws_efs_mount_target.emt.*.file_system_arn, list("")), 0)}"
}
output "network_interface_id" {
  value = "${element(concat(aws_efs_mount_target.emt.*.network_interface_id, list("")), 0)}"
}
