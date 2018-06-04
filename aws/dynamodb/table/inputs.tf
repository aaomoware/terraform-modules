variable name                     {}
variable hash_key                 {}

variable tags                     { default = {} type = "map" }
variable attributes               { default = [] type = "list" }

variable range_key                { default = "" }
variable stream_view_type         { default = "" }

variable read_capacity            { default = 20 }
variable write_capacity           { default = 20 }
variable ttl_attribute_name       { default = "TimeToExist" }

variable to_create                 { default = "10m" }
variable to_update                 { default = "10m" }
variable to_delete                 { default = "10m" }
variable sse_enable                { default = false }
variable pitr_enable               { default = false }
variable ttl_enabled               { default = false }
variable stream_enabled            { default = false }

variable simple                                     { default = false }
variable local_secondary_index                      { default = false }
variable global_secondary_index                     { default = false }

variable local_secondary_index_name                 { default = "" }
variable local_secondary_index_range_key            { default = "" }
variable local_secondary_index_projection_type      { default = "" }
variable local_secondary_index_non_key_attributes   { default = [] type = "list" }

variable global_secondary_index_name                { default = "" }
variable global_secondary_index_hash_key            { default = "" }
variable global_secondary_index_range_key           { default = "" }
variable global_secondary_index_read_capacity       { default = "" }
variable global_secondary_index_write_capacity      { default = "" }
variable global_secondary_index_projection_type     { default = "" }
variable global_secondary_index_non_key_attributes  { default = [] type = "list" }
