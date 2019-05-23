
##  ECS Task Definition

This module provides means to create an ECS Task Definition.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|family | A unique name for your task definition | string | - | yes |
|container_definitions | A list of valid container definitions provided as a single valid JSON document | file,json | - | yes |
|volume | A set of volume blocks that containers in your task may use | string | - | no |
|task_role_arn | The ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services | string | - | no |
|execution_role_arn | The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume | string | - | no |
|network_mode | The Docker networking mode to use for the containers in the task. The valid values are none, bridge, awsvpc, and host | string | - | no |
|ipc_mode | The IPC resource namespace to be used for the containers in the task The valid values are host, task, and none | string | - | no |
|pid_mode | The process namespace to use for the containers in the task. The valid values are host and task | string | - | no |
|placement_constraints | A set of placement constraints rules that are taken into consideration during task placement. Maximum number of | string | - | no |
|memory | The amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required | integer | - | no |
|requires_compatibilities | A set of launch types required by the task. The valid values are EC2 and FARGATE | string | - | no |
|tags | Key-value mapping of resource tag | map | - | no |

## Outputs

| Name | Description |
|------|-------------|
|arn | Full ARN of the Task Definition (including both family and revision) |
|family | The family of the Task Definition |
|revision | The revision of the task in a particular family |


## Testing
See tests folder

## Documentation
[aws_ecs_task_definition](https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html)
