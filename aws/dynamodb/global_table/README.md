
##  DynamoDB Global Table

Provides a resource to manage a DynamoDB Global Table. These are layered on top of existing DynamoDB Tables.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | The name of the global table. Must match underlying DynamoDB Table names in all regions | string | - | no |
|replica | Underlying DynamoDB Table. At least 1 replica must be defined. See below | string | - | no |


| Name | Description |
|------|-------------|
|id | The name of the DynamoDB Global Table |
|arn | The ARN of the DynamoDB Global Table |


## Documentation
[aws_dynamodb_global_table](https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html)
