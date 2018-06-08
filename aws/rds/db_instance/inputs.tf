
variable engine                              {}
variable password                            {}
variable username                            {}
variable instance_class                      {}
variable allocated_storage                   {}

variable bucket_name                         {}
variable bucket_prefix                       { default = "" }
variable source_engine                       {}
variable ingestion_role                      {}
variable source_engine_version               {}

variable create                              { default = 40 }
variable update                              { default = 80 }
variable delete                              { default = 40 }

variable prefix                              { default = false }
variable s3_import                           { default = false }
variable storage_encrypted                   { default = false }
variable apply_immediately                   { default = false }
variable monitoring_interval                 { default = 0 }
variable skip_final_snapshot                 { default = false }
variable publicly_accessible                 { default = false }
variable copy_tags_to_snapshot               { default = false }
variable auto_minor_version_upgrade          { default = true }

variable tags                                { default = "" }
variable iops                                { default = "" }
variable name                                { default = "" }
variable port                                { default = "" }
variable multi_az                            { default = "" }
variable timezone                            { default = "" }
variable kms_key_id                          { default = "" }
variable identifier                          { default = "" }
variable storage_type                        { default = "io1" }
variable license_model                       { default = "" }
variable backup_window                       { default = "" }
variable engine_version                      { default = "" }
variable option_group_name                   { default = "" }
variable identifier_prefix                   { default = "" }
variable availability_zone                   { default = "" }
variable character_set_name                  { default = "" }
variable maintenance_window                  { default = "" }
variable monitoring_role_arn                 { default = "" }
variable snapshot_identifier                 { default = "" }
variable replicate_source_db                 { default = "" }
variable parameter_group_name                { default = "" }
variable db_subnet_group_name                { default = "" }
variable vpc_security_group_ids              { default = [] type = "list" }
variable backup_retention_period             { default = "" }
variable final_snapshot_identifier           { default = "" }
variable allow_major_version_upgrade         { default = "" }
variable enabled_cloudwatch_logs_exports     { default = [] type = "list" }
variable iam_database_authentication_enabled { default = "" }
