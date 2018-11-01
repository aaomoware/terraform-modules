output "id" {
  value = "${element(concat(aws_launch_configuration.lc.*.id, list("")), 0)}"
}
