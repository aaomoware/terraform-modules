
output "id" {
  value = "${element(concat(aws_rds_cluster.rc.*.id,list("")),0)}"
}
output "port" {
  value = "${element(concat(aws_rds_cluster.rc.*.port,list("")),0)}"
}
output "engine" {
  value = "${element(concat(aws_rds_cluster.rc.*.engine,list("")),0)}"
}
output "status" {
  value = "${element(concat(aws_rds_cluster.rc.*.status,list("")),0)}"
}
output "endpoint" {
  value = "${element(concat(aws_rds_cluster.rc.*.endpoint,list("")),0)}"
}
output "database_name" {
  value = "${element(concat(aws_rds_cluster.rc.*.database_name,list("")),0)}"
}
output "hosted_zone_id" {
  value = "${element(concat(aws_rds_cluster.rc.*.hosted_zone_id,list("")),0)}"
}
output "engine_version" {
  value = "${element(concat(aws_rds_cluster.rc.*.engine_version,list("")),0)}"
}
output "cluster_members" {
  value = "${element(concat(aws_rds_cluster.rc.*.cluster_members,list("")),0)}"
}
output "reader_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc.*.reader_endpoint,list("")),0)}"
}
output "master_username" {
  value = "${element(concat(aws_rds_cluster.rc.*.master_username,list("")),0)}"
}
output "allocated_storage" {
  value = "${element(concat(aws_rds_cluster.rc.*.allocated_storage,list("")),0)}"
}
output "storage_encrypted" {
  value = "${element(concat(aws_rds_cluster.rc.*.storage_encrypted,list("")),0)}"
}
output "availability_zones" {
  value = "${element(concat(aws_rds_cluster.rc.*.availability_zones,list("")),0)}"
}
output "cluster_identifier" {
  value = "${element(concat(aws_rds_cluster.rc.*.cluster_identifier,list("")),0)}"
}
output "maintenance_window" {
  value = "${element(concat(aws_rds_cluster.rc.*.maintenance_window,list("")),0)}"
}
output "cluster_resource_id" {
  value = "${element(concat(aws_rds_cluster.rc.*.cluster_resource_id,list("")),0)}"
}
output "backup_retention_period" {
  value = "${element(concat(aws_rds_cluster.rc.*.backup_retention_period,list("")),0)}"
}
output "preferred_backup_window" {
  value = "${element(concat(aws_rds_cluster.rc.*.preferred_maintenance_window,list("")),0)}"
}
output "preferred_maintenance_window" {
  value = "${element(concat(aws_rds_cluster.rc.*.preferred_maintenance_window,list("")),0)}"
}
output "replication_source_identifier" {
  value = "${element(concat(aws_rds_cluster.rc.*.replication_source_identifier,list("")),0)}"
}



output "s3_import_id" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.id,list("")),0)}"
}
output "s3_import_port" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.port,list("")),0)}"
}
output "s3_import_engine" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.engine,list("")),0)}"
}
output "s3_import_status" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.status,list("")),0)}"
}
output "s3_import_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.endpoint,list("")),0)}"
}
output "s3_import_database_name" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.database_name,list("")),0)}"
}
output "s3_import_hosted_zone_id" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.hosted_zone_id,list("")),0)}"
}
output "s3_import_engine_version" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.engine_version,list("")),0)}"
}
output "s3_import_cluster_members" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.cluster_members,list("")),0)}"
}
output "s3_import_reader_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.reader_endpoint,list("")),0)}"
}
output "s3_import_master_username" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.master_username,list("")),0)}"
}
output "s3_import_allocated_storage" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.allocated_storage,list("")),0)}"
}
output "s3_import_storage_encrypted" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.storage_encrypted,list("")),0)}"
}
output "s3_import_availability_zones" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.availability_zones,list("")),0)}"
}
output "s3_import_cluster_identifier" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.cluster_identifier,list("")),0)}"
}
output "s3_import_maintenance_window" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.maintenance_window,list("")),0)}"
}
output "s3_import_cluster_resource_id" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.cluster_resource_id,list("")),0)}"
}
output "s3_import_backup_retention_period" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.backup_retention_period,list("")),0)}"
}
output "s3_import_preferred_backup_window" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.preferred_maintenance_window,list("")),0)}"
}
output "s3_import_preferred_maintenance_window" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.preferred_maintenance_window,list("")),0)}"
}
output "s3_import_replication_source_identifier" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.replication_source_identifier,list("")),0)}"
}
