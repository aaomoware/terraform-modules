output "ecs_cluster_id" {
  value = "${aws_ecs_cluster.ecs_cluster.id}"
}

output "ecs_cluster_arn" {
  value = "${aws_ecs_cluster.ecs_cluster.arn}"
}
