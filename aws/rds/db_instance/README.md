####  DB Instance

###### Variables
```
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
```

##### Outputs
```
output "id" {
  value = "${element(concat(aws_db_instance.dis.*.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_db_instance.dis.*.arn,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_db_instance.dis.*.name,list("")),0)}"
}
output "port" {
  value = "${element(concat(aws_db_instance.dis.*.port,list("")),0)}"
}
output "engine" {
  value = "${element(concat(aws_db_instance.dis.*.engine,list("")),0)}"
}
output "status" {
  value = "${element(concat(aws_db_instance.dis.*.status,list("")),0)}"
}
output "username" {
  value = "${element(concat(aws_db_instance.dis.*.username,list("")),0)}"
}
output "address" {
  value = "${element(concat(aws_db_instance.dis.*.address,list("")),0)}"
}
output "endpoint" {
  value = "${element(concat(aws_db_instance.dis.*.endpoint,list("")),0)}"
}
output "multi_az" {
  value = "${element(concat(aws_db_instance.dis.*.multi_az,list("")),0)}"
}
output "resource_id" {
  value = "${element(concat(aws_db_instance.dis.*.resource_id,list("")),0)}"
}
output "backup_window" {
  value = "${element(concat(aws_db_instance.dis.*.backup_window,list("")),0)}"
}
output "engine_version" {
  value = "${element(concat(aws_db_instance.dis.*.engine_version,list("")),0)}"
}
output "hosted_zone_id" {
  value = "${element(concat(aws_db_instance.dis.*.hosted_zone_id,list("")),0)}"
}
output "instance_class" {
  value = "${element(concat(aws_db_instance.dis.*.instance_class,list("")),0)}"
}
output "allocated_storage" {
  value = "${element(concat(aws_db_instance.dis.*.allocated_storage,list("")),0)}"
}
output "availability_zone" {
  value = "${element(concat(aws_db_instance.dis.*.availability_zone,list("")),0)}"
}
output "storage_encrypted" {
  value = "${element(concat(aws_db_instance.dis.*.storage_encrypted,list("")),0)}"
}
output "ca_cert_identifier" {
  value = "${element(concat(aws_db_instance.dis.*.ca_cert_identifier,list("")),0)}"
}
output "maintenance_window" {
  value = "${element(concat(aws_db_instance.dis.*.maintenance_window,list("")),0)}"
}
output "backup_retention_period" {
  value = "${element(concat(aws_db_instance.dis.*.backup_retention_period,list("")),0)}"
}


#---s3_import

output "id" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.arn,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.name,list("")),0)}"
}
output "port" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.port,list("")),0)}"
}
output "engine" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.engine,list("")),0)}"
}
output "status" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.status,list("")),0)}"
}
output "username" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.username,list("")),0)}"
}
output "address" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.address,list("")),0)}"
}
output "endpoint" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.endpoint,list("")),0)}"
}
output "multi_az" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.multi_az,list("")),0)}"
}
output "resource_id" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.resource_id,list("")),0)}"
}
output "backup_window" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.backup_window,list("")),0)}"
}
output "engine_version" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.engine_version,list("")),0)}"
}
output "hosted_zone_id" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.hosted_zone_id,list("")),0)}"
}
output "instance_class" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.instance_class,list("")),0)}"
}
output "allocated_storage" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.allocated_storage,list("")),0)}"
}
output "availability_zone" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.availability_zone,list("")),0)}"
}
output "storage_encrypted" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.storage_encrypted,list("")),0)}"
}
output "ca_cert_identifier" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.ca_cert_identifier,list("")),0)}"
}
output "maintenance_window" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.maintenance_window,list("")),0)}"
}
output "backup_retention_period" {
  value = "${element(concat(aws_db_instance.dis_s3_import.*.backup_retention_period,list("")),0)}"
}
```

###### Documentation
[aws_db_instance](https://www.terraform.io/docs/providers/aws/r/db_instance.htmll)
