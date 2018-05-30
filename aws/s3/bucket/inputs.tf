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

#---versioning
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
variable versioning                { default = false }
variable replication               { default = false }

variable env                       { default = "" }
variable acl                       { default = "" }
variable region                    { default = "" }
variable policy                    { default = "" }
variable bucket                    { default = "" }
variable force_destroy             { default = "" }
variable bucket_prefix             { default = "" }
variable force_destroy             { default = "" }
variable acceleration_status       { default = "" }

#--- website
variable routing_rules             { default = "" }
variable index_document            { default = "" }
variable error_document            { default = "" }
variable redirect_all_requests_to  { default = "" }
