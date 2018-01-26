####  Redshift Cluster


###### Variables
```
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
```

##### Outputs
```
output "rc_port" {
  value = "${aws_redshift_cluster.rc.port}"
}
output "rc_id" {
  value = "${aws_redshift_cluster.rc.rc_id}"
}
output "rc_endpoint" {
  value = "${aws_redshift_cluster.rc.encrypted}"
}
output "rc_node_type" {
  value = "${aws_redshift_cluster.rc.node_type}"
}
output "rc_encrypted" {
  value = "${aws_redshift_cluster.rc.encrypted}"
}
output "rc_cluster_type" {
  value = "${aws_redshift_cluster.rc.cluster_type}"
}
output "rc_database_name" {
  value = "${aws_redshift_cluster.rc.database_name}"
}
output "rc_cluster_version" {
  value = "${aws_redshift_cluster.rc.cluster_version}"
}
output "rc_availability_zone" {
  value = "${aws_redshift_cluster.rc.availability_zone}"
}
output "rc_cluster_identifier" {
  value = "${aws_redshift_cluster.rc.cluster_identifier}"
}
output "rc_cluster_public_key" {
  value = "${aws_redshift_cluster.rc.cluster_public_key}"
}
output "rc_vpc_security_group_ids" {
  value = "${aws_redshift_cluster.rc.vpc_security_group_ids}"
}
output "rc_cluster_security_groups" {
  value = "${aws_redshift_cluster.rc.cluster_security_groups}"
}
output "rc_cluster_revision_number" {
  value = "${aws_redshift_cluster.rc.cluster_revision_number}"
}
output "rc_cluster_subnet_group_name" {
  value = "${aws_redshift_cluster.rc.cluster_subnet_group_name}"
}
output "rc_preferred_maintenance_window" {
  value = "${aws_redshift_cluster.rc.preferred_maintenance_window}"
}
output "rc_cluster_parameter_group_name" {
  value = "${aws_redshift_cluster.rc.cluster_parameter_group_name}"
}
output "rc_automated_snapshot_retention_period" {
  value = "${aws_redshift_cluster.rc.automated_snapshot_retention_period}"
}
```

###### Documentation
[aws_redshift_cluster](https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#logging)
