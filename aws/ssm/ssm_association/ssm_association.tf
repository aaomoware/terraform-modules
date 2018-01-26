resource "aws_ssm_association" "ssma" {
  name                = "${var.name}"
  parameters          = "${var.parameters}"
  instance_id         = "${var.instance_id}"
  document_version    = "${var.document_version}"
  association_name    = "${var.association_name}"
  schedule_expression = "${var.schedule_expression}"

  output_location {
    s3_key_prefix  = "${var.s3_key_prefix}"
    s3_bucket_name = "${var.s3_bucket_name}"
  }

  targets {
    key     = "${var.key}"
    values  = ["${var.values}"]
  }
}
