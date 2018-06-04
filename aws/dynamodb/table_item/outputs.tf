output "item" {
  value = "${aws_dynamodb_table_item.dti.item}"
}
output "hash_key" {
  value = "${aws_dynamodb_table_item.dti.hash_key}"
}
output "range_key" {
  value = "${aws_dynamodb_table_item.dti.range_key}"
}
output "table_name" {
  value = "${aws_dynamodb_table_item.dti.table_name}"
}
