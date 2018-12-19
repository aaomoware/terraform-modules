output "id" {
  vaule = "${aws_efs_mount_target.emt.id}"
}
output "dns_name" {
  vaule = "${aws_efs_mount_target.emt.dns_name}"
}
output "file_system_arn" {
  vaule = "${aws_efs_mount_target.emt.file_system_arn}"
}
output "network_interface_id" {
  vaule = "${aws_efs_mount_target.emt.network_interface}"
}
