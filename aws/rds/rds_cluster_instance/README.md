####  RDS Cluster Resource Instance

###### Variables
```
variable instance_class                  {}
variable cluster_identifier              {}
variable db_subnet_group_name            {}

variable create                          { default = 90 }
variable update                          { default = 90 }
variable delete                          { default = 90 }

variable tags                            { default = {} type = "map" }
variable ccount                          { default = 0 }
variable engine                          { default = "aurora" }
variable promotion_tier                  { default = 0 }
variable apply_immediately               { default = false }
variable publicly_accessible             { default = false }
variable monitoring_interval             { default = 0 }
variable auto_minor_version_upgrade      { default = true }

variable identifier                      { default = "" }
variable engine_version                  { default = "" }
variable identifier_prefix               { default = "" }
variable availability_zone               { default = "" }
variable monitoring_role_arn             { default = "" }
variable db_parameter_group_name         { default = "" }
variable preferred_backup_window         { default = "" }
variable preferred_maintenance_window    { default = "" }
variable performance_insights_enabled    { default = "" }
variable performance_insights_kms_key_id { default = "" }
```

##### Outputs
```
output "cluster_identifier" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.cluster_identifier,list("")),0)}"
}

output "identifier" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.identifier,list("")),0)}"
}

output "id" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.id,list("")),0)}"
}

output "writer" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.writer,list("")),0)}"
}

output "allocated_storage" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.allocated_storage,list("")),0)}"
}

output "availability_zone" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.availability_zone,list("")),0)}"
}

output "endpoint" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.endpoint,list("")),0)}"
}

output "engine" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.engine,list("")),0)}"
}

output "engine_version" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.engine_version,list("")),0)}"
}

output "database_name" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.database_name,list("")),0)}"
}

output "port" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.port,list("")),0)}"
}

output "status" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.status,list("")),0)}"
}

output "storage_encrypted" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.storage_encrypted,list("")),0)}"
}

output "kms_key_id" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.kms_key_id,list("")),0)}"
}

output "dbi_resource_id" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.dbi_resource_id,list("")),0)}"
}

output "performance_insights_enabled" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.performance_insights_enabled,list("")),0)}"
}

output "performance_insights_kms_key_id" {
  value = "${element(concat(aws_rds_cluster_instance.rci.*.performance_insights_kms_key_id,list("")),0)}"
}
```

###### Documentation
[aws_rds_cluster_instance](https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html)
