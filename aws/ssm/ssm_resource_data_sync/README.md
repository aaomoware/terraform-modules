####  SSM Resource Data Sync


###### Variables
```
variable name           { default = "" }
variable region         { default = "" }
variable bucket_name    { default = "" }
```

##### Outputs
```
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
```

###### Documentation
[aws_ssm_resource_data_sync](https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html)
