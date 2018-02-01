variable iops                          { default = "" }
variable volume_type                   { default = "" }
variable volume_size                   { default = "" }
variable ebs_enabled                   { default = true }

variable kms_key_id                    { default = "" }
variable ear_enabled                   { default = false }

variable subnet_ids                    { default = "" }
variable security_group_ids            { default = "" }

variable domain_name                   { default = "" }
variable access_policies               { default = "" }
variable elasticsearch_version         { default = "" }

variable instance_type                 { default = "" }
variable instance_count                { default = "" }
variable dedicated_master_type         { default = "" }
variable dedicated_master_count        { default = "" }
variable zone_awareness_enabled        { default = "" }
variable dedicated_master_enabled      { default = "" }

variable log_type                      { default = "" }
variable lpo_enabled                   { default = false }
variable cloudwatch_log_group_arn      { default = "" }
variable automated_snapshot_start_hour { default = "" }
