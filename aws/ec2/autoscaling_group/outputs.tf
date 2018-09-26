output "name" {
  value = "${aws_autoscaling_group.name}"
}

output "id" {
  value = "${aws_autoscaling_group.id}"
}

output "arn" {
  value = "${aws_autoscaling_group.ag.max_size}"
}
