####  ECS Service

This module provides means to create an ECS Service.

## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name - | The name of the service (up to 255 letters, numbers, hyphens, and underscores) | string | - | yes |
|task_definition | The family and revision (family:revision) or full ARN of the task definition that you want to run in your service | string | - | yes |
|desired_count | The number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the DAEMON scheduling | string | - | no |
|launch_type | The launch type on which to run your service. The valid values are EC2 and FARGATE | string | EC2 | no |
|platform_version | The platform version on which to run your service. Only applicable for launch_type set to FARGATE | string | LATEST | no | |
|scheduling_strategy | The scheduling strategy to use for the service. The valid values are REPLICA and DAEMON | string | REPLICA | no |
|cluster | ARN of an ECS cluster | string | - | no |
|iam_role | ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf | string | - | yes |
|deployment_controller | Configuration block containing deployment controller configuration. Defined below. | string | - | no |
|deployment_maximum_percent | The upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a | string | - | no |
|deployment_minimum_healthy_percent | The lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain | string | - | no |
|enable_ecs_managed_tags | Specifies whether to enable Amazon ECS managed tags for the tasks within the service | boolean | - | no |
|propagate_tags | Specifies whether to propagate the tags from the task definition or the service to the tasks. | boolean | - | no |
|ordered_placement_strategy | Service level strategy rules that are taken into consideration during task placement | integer | - | no |
|health_check_grace_period_seconds - (Optional) Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown,  | string | - | no |
|load_balancer | A load balancer block. Load balancers documented below | string | - | no |
|placement_constraints | Rules that are taken into consideration during task placement | map | - | no |
|network_configuration | The network configuration for the service | map | - | no |
|service_registries | The service discovery registries for the service | map | - | no |
|tags | Key-value mapping of resource tags | map | - | no |


## Outputs

| Name | Description |
|------|-------------|
|id | The Amazon Resource Name (ARN) that identifies the service |
|name | The name of the service |
|cluster | The Amazon Resource Name (ARN) of cluster which the service runs on |
|iam_role | The ARN of IAM role used for ELB |
|desired_count | The number of instances of the task definition |

## Testing
See tests folder


## Documentation
[aws_ecs_service](https://www.terraform.io/docs/providers/aws/r/ecs_service.html)
