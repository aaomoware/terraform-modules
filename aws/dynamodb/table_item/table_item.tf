resource "aws_dynamodb_table_item" "dti" {
  item       = "${var.item}"
  hash_key   = "${var.hash_key}"
  range_key  = "${var.range_key}"
  table_name = "${var.table_name}"
}
