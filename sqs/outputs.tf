# -- fifo queue
output "fifo_dlq_id" {
  value = "${aws_sqs_queue.fifo_dlq.id}"
}
output "fifo_dlq_arn" {
  value = "${aws_sqs_queue.fifo_dlq.arn}"
}

output "fifo_with_dlq_id" {
  value = "${aws_sqs_queue.fifo_with_dlq.id}"
}
output "fifo_with_dlq_arn" {
  value = "${aws_sqs_queue.fifo_with_dlq.arn}"
}

output "fifo_without_dlq_id" {
  value = "${aws_sqs_queue.fifo_without_dlq.id}"
}
output "fifo_without_dlq_arn" {
  value = "${aws_sqs_queue.fifo_without_dlq.arn}"
}



# -- standard queue
output "standard_dlq_id" {
  value = "${aws_sqs_queue.standard_dlq.id}"
}
output "standard_dlq_arn" {
  value = "${aws_sqs_queue.standard_dlq.arn}"
}

output "standard_with_dlq_id" {
  value = "${aws_sqs_queue.standard_with_dlq.id}"
}
output "standard_with_dlq_arn" {
  value = "${aws_sqs_queue.standard_with_dlq.arn}"
}

output "standard_without_dlq_id" {
  value = "${aws_sqs_queue.standard_without_dlq.id}"
}
output "standard_without_dlq_arn" {
  value = "${aws_sqs_queue.standard_without_dlq.arn}"
}



# -- sse queue
output "sse_dlq_id" {
  value = "${aws_sqs_queue.sse_dlq.id}"
}
output "sse_dlq_arn" {
  value = "${aws_sqs_queue.sse_dlq.arn}"
}

output "sse_with_dlq_id" {
  value = "${aws_sqs_queue.sse_with_dlq.id}"
}
output "sse_with_dlq_arn" {
  value = "${aws_sqs_queue.sse_with_dlq.arn}"
}

output "sse_without_dlq_id" {
  value = "${aws_sqs_queue.sse_without_dlq.id}"
}
output "sse_without_dlq_arn" {
  value = "${aws_sqs_queue.sse_without_dlq.arn}"
}
