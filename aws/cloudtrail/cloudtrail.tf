resource "aws_cloudtrail" "ct" {
  count = "${var.es ? 0 : 1 }"

  name                          = "${var.name}"
  tags                          = "${var.tags}"
  kms_key_id                    = "${var.kms_key_id}"
  s3_key_prefix                 = "${var.s3_key_prefix}"
  s3_bucket_name                = "${var.s3_bucket_name}"
  enable_logging                = "${var.enable_logging}"
  sns_topic_name                = "${var.sns_topic_name}"
  is_multi_region_trail         = "${var.is_multi_region_trail}"
  cloud_watch_logs_role_arn     = "${var.cloud_watch_logs_role_arn}"
  enable_log_file_validation    = "${var.enable_log_file_validation}"
  cloud_watch_logs_group_arn    = "${var.cloud_watch_logs_group_arn}"
  include_global_service_events = "${var.include_global_service_events}"
}

resource "aws_cloudtrail" "ct_es" {
  count = "${var.es ? 1 : 0 }"

  name                          = "${var.name}"
  tags                          = "${var.tags}"
  kms_key_id                    = "${var.kms_key_id}"
  s3_key_prefix                 = "${var.s3_key_prefix}"
  s3_bucket_name                = "${var.s3_bucket_name}"
  enable_logging                = "${var.enable_logging}"
  sns_topic_name                = "${var.sns_topic_name}"
  is_multi_region_trail         = "${var.is_multi_region_trail}"
  cloud_watch_logs_role_arn     = "${var.cloud_watch_logs_role_arn}"
  enable_log_file_validation    = "${var.enable_log_file_validation}"
  cloud_watch_logs_group_arn    = "${var.cloud_watch_logs_group_arn}"
  include_global_service_events = "${var.include_global_service_events}"

  event_selector {
    read_write_type           = "${var.read_write_type}"
    include_management_events = "${var.include_management_events}"

    data_resource {
      type   = "${var.type}"
      values = ["${var.values}"]
    }
  }
}
