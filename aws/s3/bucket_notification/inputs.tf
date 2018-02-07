variable sns                   { default = false }
variable sqs                   { default = false }
variable lambda                { default = false }

variable bucket                { default = "" }

#---sns
variable sns_id                { default = "" }
variable sns_events            { default = [] type= "list" }
variable sns_topic_arn         { default = "" }
variable sns_filter_prefix     { default = "" }
variable sns_filter_suffix     { default = "" }

#---sqs
variable sqs_id                { default = "" }
variable sqs_events            { default = "" }
variable sqs_queue_arn         { default = "" }
variable sqs_filter_prefix     { default = "" }
variable sqs_filter_suffix     { default = "" }

#---lambda
variable lambda_id             { default = "" }
variable lambda_events         { default = "" }
variable lambda_function_arn   { default = "" }
variable lambda_filter_prefix  { default = "" }
variable lambda_filter_suffix  { default = "" }
