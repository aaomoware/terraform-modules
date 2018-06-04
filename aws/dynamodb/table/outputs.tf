output "id" {
  value = "${element(concat(aws_dynamodb_table.dt.*.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_dynamodb_table.dt.*.arn,list("")),0)}"
}
output "stream_arn" {
  value = "${element(concat(aws_dynamodb_table.dt.*.stream_arn,list("")),0)}"
}
output "stream_label" {
  value = "${element(concat(aws_dynamodb_table.dt.*.stream_label,list("")),0)}"
}

#---local index
output "local_id" {
  value = "${element(concat(aws_dynamodb_table.dt_local_index.*.id,list("")),0)}"
}
output "local_arn" {
  value = "${element(concat(aws_dynamodb_table.dt_local_index.*.arn,list("")),0)}"
}
output "local_stream_arn" {
  value = "${element(concat(aws_dynamodb_table.dt_local_index.*.stream_arn,list("")),0)}"
}
output "local_stream_label" {
  value = "${element(concat(aws_dynamodb_table.dt_local_index.*.stream_label,list("")),0)}"
}

#---global index
output "global_id" {
  value = "${element(concat(aws_dynamodb_table.dt_global_index.*.id,list("")),0)}"
}
output "global_arn" {
  value = "${element(concat(aws_dynamodb_table.dt_global_index.*.arn,list("")),0)}"
}
output "global_stream_arn" {
  value = "${element(concat(aws_dynamodb_table.dt_global_index.*.stream_arn,list("")),0)}"
}
output "global_stream_label" {
  value = "${element(concat(aws_dynamodb_table.dt_global_index.*.stream_label,list("")),0)}"
}
