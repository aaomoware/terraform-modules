#--dead letter queue
resource "aws_sqs_queue" "fifo_dlq" {
  count = "${var.fifo_dlq ? 1 : 0}"

  name = "dlq-${var.fifo_name}-${var.env}.fifo"
  fifo_queue = true
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  content_based_deduplication = "${var.content_based_deduplication}"

  tags = "${var.tags}"
}


#--fifo, with dead letter queue
resource "aws_sqs_queue" "fifo_with_dlq" {
  count = "${var.fifo_dlq ? 1 : 0}"

  name = "${var.fifo_name}-dlq-${var.env}.fifo"
  fifo_queue = true
  delay_seconds = "${var.delay_seconds}"
  redrive_policy = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.fifo_dlq.arn}\",\"maxReceiveCount\":\"${var.maxReceiveCount}\"}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  content_based_deduplication = "${var.content_based_deduplication}"

  tags = "${var.tags}"
}


#--fifo, without dead letter queue
resource "aws_sqs_queue" "fifo_without_dlq" {
  count = "${var.fifo ? 1 : 0}"

  name = "${var.fifo_name}-${var.env}.fifo"
  fifo_queue = true
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  content_based_deduplication = "${var.content_based_deduplication}"

  tags = "${var.tags}"
}
