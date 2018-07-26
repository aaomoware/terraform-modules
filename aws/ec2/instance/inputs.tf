variable basic                                { default = false }
variable network                              { default = false }
variable instance_count                       { default = "1" }

variable ami                                  {}
variable tags                                 { default = {} type = "map" }
variable tenancy                              { default = "" }
variable key_name                             { default = "" }
variable subnet_id                            { default = [] type = "list" }
variable user_data                            { default = "" }
variable monitoring                           { default = "" }
variable private_ip                           { default = "" }
variable volume_tags                          { default = {} type = "map" }
variable instance_type                        {}
variable ebs_optimized                        { default = "" }
variable ipv6_addresses                       { default = "" }
variable security_groups                      { default = [] type = "list" }
variable placement_group                      { default = "" }
variable user_data_base64                     { default = "" }
variable source_dest_check                    { default = "" }
variable get_password_data                    { default = "" }
variable availability_zone                    { default = "" }
variable ipv6_address_count                   { default = "" }
variable iam_instance_profile                 { default = "" }
variable vpc_security_group_ids               { default = [] type = "list" }
variable disable_api_termination              { default = "" }
variable associate_public_ip_address          { default = "" }
variable instance_initiated_shutdown_behavior { default = "" }

# Timeout
variable create                               { default = "10m" }
variable update                               { default = "10m" }
variable delete                               { default = "20m" }

# root_block_device
variable root_iops                            { default = "" }
variable root_volume_type                     { default = "" }
variable root_volume_size                     { default = "" }
variable root_delete_on_termination           { default = true }


# ebs_block_device
variable ebs_iops                             { default = "" }
variable encrypted                            { default = "" }
variable snapshot_id                          { default = "" }
variable ebs_device_name                      { default = "" }
variable ebs_volume_type                      { default = "" }
variable ebs_volume_size                      { default = "" }
variable ebs_delete_on_termination            { default = "" }


# ephemeral_block_device
variable no_device                            { default = "" }
variable virtual_name                         { default = "" }
variable ephemeral_device_name                { default = "" }

# network_interface
variable device_index                         { default = "" }
variable network_interface_id                 { default = "" }
variable net_delete_on_termination            { default = false }

# credit_specification
variable cpu_credits                          { default = "" }
