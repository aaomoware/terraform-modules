#output "daemon_id" {
#  value = "${element(concat(aws_ecs_service.es_daemon.*.id, list("")), 0)}"
#}
#
#output "daemon_name" {
#  value = "${element(concat(aws_ecs_service.es_daemon.*.name, list("")), 0)}"
#}
#
#output "daemon_cluster" {
#  value = "${element(concat(aws_ecs_service.es_daemon.*.cluster, list("")), 0)}"
#}
#
#output "daemon_iam_role" {
#  value = "${element(concat(aws_ecs_service.es_daemon.*.iam_role, list("")), 0)}"
#}
#
#output "daemon_desired_count" {
#  value = "${element(concat(aws_ecs_service.es_daemon.*.desired_count, list("")), 0)}"
#}

output "replica_id" {
  value = "${element(concat(aws_ecs_service.es_replica.*.id, list("")), 0)}"
}

output "replica_name" {
  value = "${element(concat(aws_ecs_service.es_replica.*.name, list("")), 0)}"
}

output "replica_cluster" {
  value = "${element(concat(aws_ecs_service.es_replica.*.cluster, list("")), 0)}"
}

output "replica_iam_role" {
  value = "${element(concat(aws_ecs_service.es_replica.*.iam_role, list("")), 0)}"
}

output "replica_desired_count" {
  value = "${element(concat(aws_ecs_service.es_replica.*.desired_count, list("")), 0)}"
}
