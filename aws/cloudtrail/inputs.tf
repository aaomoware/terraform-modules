variable es                             { default = false }
variable name                           {}
variable tags                           { default = {} type = "map" }
variable kms_key_id                     { default = "" }
variable s3_key_prefix                  { default = "" }
variable s3_bucket_name                 {}
variable enable_logging                 { default = true }
variable sns_topic_name                 { default = "" }
variable is_multi_region_trail          { default = false }
variable cloud_watch_logs_role_arn      { default = "" }
variable enable_log_file_validation     { default = false }
variable cloud_watch_logs_group_arn     { default = "" }
variable include_global_service_events  { default = true }

variable type                           { default = "AWS::S3::Object" }
variable values                         { default = [] type = "list" }
variable read_write_type                { default = "All" }
variable include_management_events      { default = false }
