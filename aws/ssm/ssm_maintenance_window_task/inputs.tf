variable task_arn         { default = "" }
variable priority         { default = "" }
variable window_id        { default = "" }
variable task_type        { default = "" }
variable max_errors       { default = "" }
variable max_concurrency  { default = "" }
variable service_role_arn { default = "" }

#---logging
variable s3_region        { default = "" }
variable s3_bucket_name   { default = "" }
variable s3_bucket_prefix { default = "" }

#---task parameters
variable name             { default = "" }
variable task_values      { default = [] type = "list" }

#---targets
variable key              { default = "" }
variable targets_values   { default = [] type = "list" }
