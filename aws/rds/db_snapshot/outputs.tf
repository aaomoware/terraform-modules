output "iops" {
  value = "${aws_db_snapshot.dss.iops}"
}
output "engine" {
  value = "${aws_db_snapshot.dss.engine}"
}
output "status" {
  value = "${aws_db_snapshot.dss.status}"
}
output "vpc_id" {
  value = "${aws_db_snapshot.dss.vpc_id}"
}
output "encrypted" {
  value = "${aws_db_snapshot.dss.encrypted}"
}
output "kms_key_id" {
  value = "${aws_db_snapshot.dss.kms_key_id}"
}
output "storage_type" {
  value = "${aws_db_snapshot.dss.storage_type}"
}
output "license_model" {
  value = "${aws_db_snapshot.dss.license_model}"
}
output "source_region" {
  value = "${aws_db_snapshot.dss.source_region}"
}
output "engine_version" {
  value = "${aws_db_snapshot.dss.engine_version}"
}
output "db_snapshot_arn" {
  value = "${aws_db_snapshot.dss.db_snapshot_arn}"
}
output "option_group_name" {
  value = "${aws_db_snapshot.dss.option_group_name}"
}
output "allocated_storage" {
  value = "${aws_db_snapshot.dss.allocated_storage}"
}
output "availability_zone" {
  value = "${aws_db_snapshot.dss.availability_zone}"
}
output "source_db_snapshot_identifier" {
  value = "${aws_db_snapshot.dss.source_db_snapshot_identifier}"
}
