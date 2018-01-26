variable name                 { default = "" }
variable targets              { default = "" }
variable parameters           { default = "" }
variable instance_id          { default = "" }
variable association_name     { default = "" }
variable document_version     { default = "" }
variable schedule_expression  { default = "" }

#---Output Location
variable s3_key_prefix        { default = "" }
variable s3_bucket_name       { default = "" }

#---Targets
variable key                  { default = "" }
variable values               { default = [] type = "list" }
