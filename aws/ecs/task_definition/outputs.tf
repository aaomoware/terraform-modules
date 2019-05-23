output "arn" {
  value = "${aws_ecs_task_definition.ecs_td.arn}"
}

output "family" {
  value = "${aws_ecs_task_definition.ecs_td.family}"
}

output "revision" {
  value = "${aws_ecs_task_definition.ecs_td.revision}"
}
