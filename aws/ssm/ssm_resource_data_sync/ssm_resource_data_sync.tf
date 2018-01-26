resource "aws_ssm_resource_data_sync" "ssmrds" {
  name = "${var.name}"

  s3_destination = {
    region      = "${var.region}"
    bucket_name = "${var.bucket_name}"
  }
}
