output "ssmrds_prefix" {
  value = "${aws_ssm_resource_data_sync.ssmrds.prefix}"
}
output "ssmrds_region" {
  value = "${aws_ssm_resource_data_sync.ssmrds.region}"
}
output "ssmrds_sync_format" {
  value = "${aws_ssm_resource_data_sync.ssmrds.sync_format}"
}
output "ssmrds_kms_key_arn" {
  value = "${aws_ssm_resource_data_sync.ssmrds.kms_key_arn}"
}
output "ssmrds_bucket_name" {
  value = "${aws_ssm_resource_data_sync.ssmrds.bucket_name}"
}
