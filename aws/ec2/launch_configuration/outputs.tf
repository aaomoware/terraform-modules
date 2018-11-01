output "id" {
  value = "${element(concat(aws_launch_configuration.lc.*.id, list("")), 0)}"
}

output "id_base64" {
  value = "${element(concat(aws_launch_configuration.lc_base64.*.id, list("")), 0)}"
}
