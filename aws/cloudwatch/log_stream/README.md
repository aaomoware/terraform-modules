####  CloudWatch

Provides a CloudWatch Log Stream resource.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | The name of the log stream. Must not be longer than 512 characters and must not contain | string | - | yes |
|log_group_name | The name of the log group under which the log stream is to be created| string | - | yes |


## Outputs

| Name | Description |
|------|-------------|
|arn | The Amazon Resource Name (ARN) specifying the log stream|

## Documentation
[aws_cloudwatch_log_stream](https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html)
