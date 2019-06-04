####  CloudWatch

Provides a CloudWatch Log Group resource.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | The name of the log group. If omitted, Terraform will assign a random, unique name | string | - | no |
|retention_in_days | Specifies the number of days you want to retain log events in the specified log group | string | - | no |
|kms_key_id | The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested | string | - | no |
|tags | A mapping of tags to assign to the resource | string | - | no |


## Outputs

| Name | Description |
|------|-------------|
|arn | The Amazon Resource Name (ARN) specifying the log group |

## Documentation
[aws_cloudwatch_log_group](https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html)
