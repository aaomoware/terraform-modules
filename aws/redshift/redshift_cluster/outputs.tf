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
