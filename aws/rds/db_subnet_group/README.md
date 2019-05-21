####  DB Subnet Group

Provides an RDS DB subnet group resource


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | The name of the DB subnet group. If omitted, Terraform will assign a random, unique name | string | - | no |
|name_prefix | Creates a unique name beginning with the specified prefix. Conflicts with name | string | - | no |
|description | The description of the DB subnet group. Defaults to "Managed by Terraform" | string | - | no |
|subnet_ids | A list of VPC subnet IDs | string | - | yes |
|tags | A mapping of tags to assign to the resource | string | - | no |

## Outputs

| Name | Description |
|------|-------------|
|id | The db subnet group name |
|arn | The ARN of the db subnet group |


###### Documentation
[aws_db_subnet_group](https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html)
