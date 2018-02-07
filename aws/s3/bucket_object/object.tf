resource "aws_s3_bucket_object" "object" {

  key                     = "${var.key}"
  acl                     = "${var.acl}"
  etag                    = "${var.etag}"
  bucket                  = "${var.bucket}"
  source                  = "${var.source}"
  content                 = "${var.content}"
  kms_key_id              = "${var.kms_key_id}"
  content_type            = "${var.content_type}"
  storage_class           = "${var.storage_class}"
  cache_control           = "${var.cache_control}"
  website_redirect        = "${var.website_redirect}"
  content_encoding        = "${var.content_encoding}"
  content_language        = "${var.content_language}"
  content_disposition     = "${var.content_disposition}"
  server_side_encryption  = "${var.server_side_encryption}"
}
