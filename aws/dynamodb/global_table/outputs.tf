output "id" {
  value = "${element(concat(aws_dynamodb_global_table.dgt.*.id, list(""),0}"
}
output "arn" {
  value = "${element(concat(aws_dynamodb_global_table.dgt.*.arn, list(""),0}"
}
