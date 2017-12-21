#--dead letter queue
resource "aws_sqs_queue" "standard_dlq" {
  count = "${var.standard_dlq ? 1 : 0}"

  name_prefix = "dlq-${var.standard_name}-${var.env}-"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"

  tags {
    Name = "dlq-${var.standard_name}-${var.env}"
    Description = "dead-letter-queue for standard queue"
    Environment = "${var.env}"
  }
}



#--standard, with dead letter queue
resource "aws_sqs_queue" "standard_with_dlq" {
  count = "${var.standard_dlq ? 1 : 0}"

  name_prefix = "${var.standard_name}-dlq-${var.env}-"
  delay_seconds = "${var.delay_seconds}"
  redrive_policy = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.standard_dlq.arn}\",\"maxReceiveCount\":\"${var.maxReceiveCount}\"}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"

  tags {
    Name = "${var.standard_name}-dlq-${var.env}"
    Description = "standard with dead-letter-queue"
    Environment = "${var.env}"
  }
}



#--standard, without redrive_policy enabled
resource "aws_sqs_queue" "standard_without_dlq" {
  count = "${var.standard ? 1 : 0}"

  name_prefix = "${var.standard_name}-${var.env}-"
  delay_seconds = "${var.delay_seconds}"
  max_message_size = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"

  tags {
    Name = "${var.standard_name}-${var.env}"
    Description = "standard queue without dead-letter-queue"
    Environment = "${var.env}"
  }
}
