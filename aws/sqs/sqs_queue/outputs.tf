# -- fifo queue
output "fifo_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_dlq.*.id, list("")), 0)}"
}
output "fifo_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_dlq.*.arn, list("")), 0)}"
}

output "fifo_with_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_with_dlq.*.id, list("")), 0)}"
}
output "fifo_with_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_with_dlq.*.arn, list("")), 0)}"
}

output "fifo_without_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_without_dlq.*.id, list("")), 0)}"
}
output "fifo_without_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_without_dlq.*.arn, list("")), 0)}"
}



# -- standard queue
output "standard_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_dlq.*.id, list("")), 0)}"
}
output "standard_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.standard_dlq.*.arn, list("")), 0)}"
}

output "standard_with_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_with_dlq.*.id, list("")), 0)}"
}
output "standard_with_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.standard_with_dlq.*.arn, list("")), 0)}"
}

output "standard_without_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_without_dlq.*.id, list("")), 0)}"
}
output "standard_without_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.standard_without_dlq.*.arn, list("")), 0)}"
}



# -- sse queue
output "sse_dlq_id" {
  value = "${element(concat(aws_sqs_queue.sse_dlq.*.id, list("")), 0)}"
}
output "sse_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.sse_dlq.*.arn, list("")), 0)}"
}

output "sse_with_dlq_id" {
  value = "${element(concat(aws_sqs_queue.sse_with_dlq.*.id, list("")), 0)}"
}
output "sse_with_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.sse_with_dlq.*.arn, list("")), 0)}"
}

output "sse_without_dlq_id" {
  value = "${element(concat(aws_sqs_queue.sse_without_dlq.*.id, list("")), 0)}"
}
output "sse_without_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.sse_without_dlq.*.arn, list("")), 0)}"
}
