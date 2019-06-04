####  CloudTrail

Provides a CloudTrail resource.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name | Specifies the name of the trail | string | - | yes |
|s3_bucket_name | Specifies the name of the S3 bucket designated for publishing log files | string | - | yes |
|s3_key_prefix | Specifies the S3 key prefix that follows the name of the bucket you have designated for log file delivery | string | - | no |
|cloud_watch_logs_role_arn | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user’s log group | string | - | no |
|cloud_watch_logs_group_arn | Specifies a log group name using an Amazon Resource Name (ARN), that represents the log group to which CloudTrail logs will be delivered | string | - | no |
|enable_logging | Enables logging for the trail. Defaults to true. Setting this to false will pause logging | string | - | no |
|include_global_service_events | Specifies whether the trail is publishing events from global services such as IAM to the log files. Defaults to true | string | - | no |
|is_multi_region_trail | Specifies whether the trail is created in the current region or in all regions | boolean | false | no |
|is_organization_trail | Specifies whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account | boolean | false | no |
|sns_topic_name | Specifies the name of the Amazon SNS topic defined for notification of log file delivery | string | - | no |
|enable_log_file_validation | Specifies whether log file integrity validation is enabled | boolean | false | no |
|kms_key_id | Specifies the KMS key ARN to use to encrypt the logs delivered by CloudTrail | string | - | no |
|event_selector | Specifies an event selector for enabling data event logging. Fields documented below. Please note the CloudTrail limits when configuring these | string | - | no |
|tags | A mapping of tags to assign to the trail | string | - | no |


## Outputs

| Name | Description |
|------|-------------|
|id | The name of the trail|
|home_region | The region in which the trail was created|
|arn | The Amazon Resource Name of the trail|


## Documentation
[aws_cloudtrail](https://www.terraform.io/docs/providers/aws/r/cloudtrail.html)
