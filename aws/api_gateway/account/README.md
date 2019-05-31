####  API Gateway Account

###### Variables


| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|cloudwatch_role_arn |The ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more in AWS Docs. Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level | string | - | no |

## Outputs

| Name | Description |
|------|-------------|
|throttle_settings| Account-Level throttle settings. See exported fields below.|
|burst_limit| The absolute maximum number of times API Gateway allows the API to be called per second (RPS).|
|rate_limit| The number of times API Gateway allows the API to be called per second on average (RPS).|


###### Documentation
[aws_api_gateway_account](https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html)
