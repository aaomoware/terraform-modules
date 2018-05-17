#--dead letter queue
resource "aws_sqs_queue" "sse_dlq" {
  count = "${var.sse_dlq ? 1 : 0}"

  name_prefix = "dlq-${var.sse_name}-${var.env}"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  kms_master_key_id = "${var.kms_master_key_id}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  kms_data_key_reuse_period_seconds = "${var.kms_data_key_reuse_period_seconds}"

  tags = "${var.tags}"
}


#--sse, with dead letter queue
resource "aws_sqs_queue" "sse_with_dlq" {
  count = "${var.sse_dlq ? 1 : 0}"

  name_prefix = "${var.sse_name}-dlq-${var.env}"
  delay_seconds = "${var.delay_seconds}"
  redrive_policy = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.sse_dlq.arn}\",\"maxReceiveCount\":\"${var.maxReceiveCount}\"}"
  max_message_size = "${var.max_message_size}"
  kms_master_key_id = "${var.kms_master_key_id}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  kms_data_key_reuse_period_seconds = "${var.kms_data_key_reuse_period_seconds}"

  tags = "${var.tags}"
}


#--sse, without dead letter queue
resource "aws_sqs_queue" "sse_without_dlq" {
  count = "${var.sse ? 1 : 0}"

  name_prefix = "${var.sse_name}-${var.env}"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  kms_master_key_id = "${var.kms_master_key_id}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  kms_data_key_reuse_period_seconds = "${var.kms_data_key_reuse_period_seconds}"

  tags = "${var.tags}"
}
