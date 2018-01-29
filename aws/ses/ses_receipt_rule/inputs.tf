variable s3_a                 { default = false }
variable sns_a                { default = false }
variable stop_a               { default = false }
variable header_a             { default = false }
variable lambda_a             { default = false }
variable workmail_a           { default = false }

variable name                 { default = "" }
variable after                { default = "" }
variable enabled              { default = "" }
variable recipients           { default = [] type = "list" }
variable tls_policy           { default = "" }
variable scan_enabled         { default = "" }
variable rule_set_name        { default = "" }

#---Add header actions support the following

variable header_name          { default = "" }
variable header_value         { default = "" }
variable header_position      { default = "" }

#---Bounce actions support the following:

variable sender               { default = "" }
variable message              { default = "" }
variable status_code          { default = "" }
variable bounce_position      { default = "" }
variable smtp_reply_code      { default = "" }
variable bounce_topic_arn     { default = "" }

#---Lambda actions support the following:

variable function_arn         { default = "" }
variable lambda_position      { default = "" }
variable invocation_type      { default = "" }
variable lambda_topic_arn     { default = "" }


#---S3 actions support the following:

variable s3_position          { default = "" }
variable bucket_name          { default = "" }
variable kms_key_arn          { default = "" }
variable s3_topic_arn         { default = "" }
variable object_key_prefix    { default = "" }

#---SNS actions support the following:

variable sns_position         { default = "" }
variable sns_topic_arn        { default = "" }

#---Stop actions support the following:

variable scope                { default = "" }
variable stop_position        { default = "" }
variable stop_topic_arn       { default = "" }

#---WorkMail actions support the following:

variable organization_arn     { default = "" }
variable workmail_position    { default = "" }
variable workmail_topic_arn   { default = "" }
