output "id" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.id, list("")), 0)}"
}

output "name" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.name, list("")), 0)}"
}

output "cluster" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.cluster, list("")), 0)}"
}

output "iam_role" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.iam_role, list("")), 0)}"
}

output "desired_count" {
  value = "${element(concat(aws_ecs_service.es_daemon.*.desired_count, list("")), 0)}"
}

output "id" {
  value = "${element(concat(aws_ecs_service.es.*.id, list("")), 0)}"
}

output "name" {
  value = "${element(concat(aws_ecs_service.es.*.name, list("")), 0)}"
}

output "cluster" {
  value = "${element(concat(aws_ecs_service.es.*.cluster, list("")), 0)}"
}

output "iam_role" {
  value = "${element(concat(aws_ecs_service.es.*.iam_role, list("")), 0)}"
}

output "desired_count" {
  value = "${element(concat(aws_ecs_service.es.*.desired_count, list("")), 0)}"
}
