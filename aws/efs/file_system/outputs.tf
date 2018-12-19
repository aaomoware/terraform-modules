output "arn" {
  values = "${aws_efs_file_system.efs.arn}"
}
output "id" {
  values = "${aws_efs_file_system.efs.id}"
}
output "dns_name" {
  values = "${aws_efs_file_system.efs.dns_name}"
}
