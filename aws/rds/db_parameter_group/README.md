####  DB Parameter Group

Provides a DB event subscription resource.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | The name of the DB parameter group. If omitted, Terraform will assign a random, unique name | string | - | no |
|name_prefix | Creates a unique name beginning with the specified prefix. Conflicts with name | string | - | no |
|family | The family of the DB parameter group | string | - | no |
|description | The description of the DB parameter group. Defaults to "Managed by Terraform" | string | - | no |
|parameter | A list of DB parameters to apply. Note that parameters may differ from a family to an other | list | - | no |
|tags | A mapping of tags to assign to the resource | map | - | no |


## Outputs

| Name | Description |
|------|-------------|
|id | The db parameter group name |
|arn | The ARN of the db parameter group |

###### Documentation
[aws_db_parameter_group](https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html)
