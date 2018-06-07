variable tags                      { default = {} type = "map" }
variable rc_id                     { default = "" }
variable rc_role                   { default = "" }
variable rc_prefix                 { default = "" }
variable rc_status                 { default = "" }
variable rc_bucket                 { default = "" }
variable rc_storage_class          { default = "" }

#---encryption
variable sse_algorithm             { default = "" }
variable kms_master_key_id         { default = "" }

#---logging
variable target_bucket             { default = "" }
variable target_prefix             { default = "" }

#---versioning, lifecycle_rule
variable enabled                   { default = "" }
variable mfa_delete                { default = "" }

#--- CORS
variable expose_headers            { default = [] type = "list" }
variable allowed_headers           { default = [] type = "list" }
variable allowed_methods           { default = [] type = "list" }
variable allowed_origins           { default = [] type = "list" }
variable max_age_seconds           { default = "" }

variable wsh                       { default = false }
variable cors                      { default = false }
variable basic                     { default = false }
variable prefix                    { default = false }
variable logging                   { default = false }
variable lifecycle                 { default = false }
variable encryption                { default = false }
variable versioning                { default = false }
variable replication               { default = false }

variable env                       { default = "" }
variable acl                       { default = "" }
variable region                    { default = "" }
variable policy                    { default = "" }
variable bucket                    { default = "" }
variable bucket_prefix             { default = "" }
variable force_destroy             { default = "" }
variable request_payer             { default = "BucketOwner" }
variable acceleration_status       { default = "Suspended" }

#--- website
variable routing_rules             { default = "" }
variable index_document            { default = "" }
variable error_document            { default = "" }
variable redirect_all_requests_to  { default = "" }


#--- object lifecycle
variable noncurrent_version_expiration {
  default = [
    {
      days = 30
      storage_class = "STANDARD_IA"
    },
    {
      days = 60
      storage_class = "GLACIER"
    },
    {
      days = 90
    }
    ]
    type = "list"
  }

variable id                        { default = "" }
variable l_tags                    { default = {} type = "map" }
variable l_prefix                  { default = "" }
variable expiration                { default = 90 }
variable transition                {
  default = [
    {
      days = 15
      storage_class = "ONEZONE_IA"
    },
    {
      days = 30
      storage_class = "STANDARD"
    },
    {
      days = 60
      storage_class = "GLACIER"
    }
    ]
  }
