
##  ECS Cluster

This module provides means to create an ECS cluster.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | The name of the cluster (up to 255 letters, numbers, hyphens, and underscores) | string | - | yes |
| tags | Key-value mapping of resource tags | map | - | no |


## Outputs

| Name | Description |
|------|-------------|
| ecs_cluster_id | The Amazon Resource Name (ARN) that identifies the cluster |
| ecs_cluster_arn | The Amazon Resource Name (ARN) that identifies the cluster |



## Testing
See tests folder

## Documentation
[aws_ecs_cluster](https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html)
