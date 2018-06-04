resource "aws_dynamodb_table" "dt" {

  name             = "${var.name}"
  hash_key         = "${var.hash_key}"
  range_key        = "${var.range_key}"
  read_capacity    = "${var.read_capacity}"
  write_capacity   = "${var.write_capacity}"
  stream_enabled   = "${var.stream_enabled}"
  stream_view_type = "${var.stream_view_type}"

  tags             = "${var.tags}"
  attribute        = "${var.attributes}"

  server_side_encryption {
    enabled = "${var.sse_enable}"
  }
  point_in_time_recovery {
    enabled = "${var.pitr_enable}"
  }

  timeouts {
    create = "${var.to_create}"
    update = "${var.to_update}"
    delete = "${var.to_delete}"
  }

  ttl {
    enabled        = "${var.ttl_enabled}"
    attribute_name = "${var.ttl_attribute_name}"
  }
}
