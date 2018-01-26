resource "aws_ssm_maintenance_window_task" "ssmmwt" {
  task_arn         = "${var.task_arn}"
  priority         = "${var.priority}"
  task_type        = "${var.task_type}"
  window_id        = "${var.window_id}"
  max_errors       = "${var.max_errors}"
  max_concurrency  = "${var.max_concurrency}"
  service_role_arn = "${var.service_role_arn}"

  targets {
    key    = "${var.key}"
    values = ["${var.targets_values}"]
  }

  logging_info {
    s3_region        = "${var.s3_region}"
    s3_bucket_name   = "${var.s3_bucket_name}"
    s3_bucket_prefix = "${var.s3_bucket_prefix}"
  }

  task_parameters {
    name   = "${var.name}"
    values = ["${var.task_values}"]
  }
}
