output "id" {
  value = "${element(concat(aws_rds_cluster.rc.*.id,list("")),0)}"
}

output "port" {
  value = "${element(concat(aws_rds_cluster.rc.*.port,list("")),0)}"
}

output "engine" {
  value = "${element(concat(aws_rds_cluster.rc.*.engine,list("")),0)}"
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

output "cluster_members" {
  value = "${aws_rds_cluster.rc.*.cluster_members}"
}

output "reader_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc.*.reader_endpoint,list("")),0)}"
}

output "cluster_identifier" {
  value = "${element(concat(aws_rds_cluster.rc.*.cluster_identifier,list("")),0)}"
}

output "cluster_resource_id" {
  value = "${element(concat(aws_rds_cluster.rc.*.cluster_resource_id,list("")),0)}"
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

output "s3_import_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.endpoint,list("")),0)}"
}

output "s3_import_database_name" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.database_name,list("")),0)}"
}

output "s3_import_hosted_zone_id" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.hosted_zone_id,list("")),0)}"
}

output "s3_import_cluster_members" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.cluster_members,list("")),0)}"
}

output "s3_import_reader_endpoint" {
  value = "${element(concat(aws_rds_cluster.rc_s3_import.*.reader_endpoint,list("")),0)}"
}
