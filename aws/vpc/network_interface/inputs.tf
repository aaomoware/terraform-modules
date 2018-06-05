variable tags               { default = {} type = "map" }
variable private_ips        { default = [] type = "list" }
variable description        { default = "" }
variable security_groups    { default = [] type = "list" }
variable private_ips_count  { default = "0" }
variable source_dest_check  { default = true }


variable instance           {}
variable subnet_id          {}
variable device_index       {}
