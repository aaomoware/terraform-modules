output "id" {
  value = "${aws_dynamodb_table.dt.id}"
}
output "arn" {
  value = "${aws_dynamodb_table.dt.arn}"
}
output "stream_arn" {
  value = "${aws_dynamodb_table.dt.stream_arn}"
}
output "stream_label" {
  value = "${aws_dynamodb_table.dt.stream_label}"
}
