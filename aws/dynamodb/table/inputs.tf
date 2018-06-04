variable name                     {}
variable hash_key                 {}

variable tags                     { default = {} type = "map" }
variable attributes               { default = [] type = "list" }

variable range_key                { default = "" }
variable attribute_name           { default = "" }
variable stream_view_type         { default = "" }
variable local_secondary_index    { default = "" }
variable global_secondary_index   { default = "" }
variable server_side_encryption   { default = "" }
variable point_in_time_recovery   { default = "" }

variable read_capacity            { default = 20 }
variable write_capacity           { default = 20 }
variable ttl_attribute_name       { default = "TimeToExist" }

variable sse_enable               { default = false }
variable pitr_enable              { default = false }
variable ttl_enabled              { default = false }
variable stream_enabled           { default = false }
