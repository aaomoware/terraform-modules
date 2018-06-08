
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
