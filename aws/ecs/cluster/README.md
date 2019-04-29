
####  ECS Cluster


###### Variables
```
variable name {}

variable tags {
  default = []

  type = "list"
}
```

##### Outputs
```
output "ecs_cluster_id" {
  value = "${aws_ecs_cluster.ecs_cluster.id}"
}

output "ecs_cluster_arn" {
  value = "${aws_ecs_cluster.ecs_cluster.arn}"
}
```

###### Documentation
[aws_ecs_cluster](https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html)
