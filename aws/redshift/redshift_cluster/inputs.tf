variable node_type                            { default = "" }
variable kms_key_id                           { default = "" }
variable elastic_ip                           { default = "" }
variable cluster_type                         { default = "" }
variable database_name                        { default = "" }
variable owner_account                        { default = "" }
variable master_username                      { default = "" }
variable master_password                      { default = "" }
variable cluster_version                      { default = "" }
variable availability_zone                    { default = "" }
variable cluster_identifier                   { default = "" }
variable snapshot_identifier                  { default = "" }
variable cluster_subnet_group_name            { default = "" }
variable final_snapshot_identifier            { default = "" }
variable snapshot_cluster_identifier          { default = "" }
variable cluster_parameter_group_name         { default = "" }
variable preferred_maintenance_window         { default = "" }

#---logging
variable enable                               { default = "" }
variable bucket_name                          { default = "" }
variable s3_key_prefix                        { default = "" }

#---snapshots copying detais
variable grant_name                           { default = "" }
variable retention_period                     { default = "" }
variable destination_region                   { default = "" }

variable iam_roles                            { default = [] type="list" }
variable vpc_security_group_ids               { default = [] type="list" }
variable cluster_security_groups              { default = [] type="list" }

#---defaults
variable port                                 { default = "5439" }
variable encrypted                            { default = true }
variable number_of_nodes                      { default = "1" }
variable publicly_accessible                  { default = true }
variable skip_final_snapshot                  { default = false }
variable enhanced_vpc_routing                 { default = true }
variable allow_version_upgrade                { default = true }
variable automated_snapshot_retention_period  { default = "1" }
