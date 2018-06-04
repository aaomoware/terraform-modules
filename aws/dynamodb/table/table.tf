resource "aws_dynamodb_table" "dt" {

  name             = "${var.name}"
  hash_key         = "${var.hash_key}"
  range_key        = "${var.range_keyß}"
  read_capacity    = "${var.read_capacity}"
  stream_enabled   = "${var.stream_enabled}"
  write_capacity   = "${var.write_capacity}"
  stream_view_type = "${var.stream_view_type}"

  tags             = "${var.tags}"
  attribute        = "${var.attributes}"

  server_side_encryption {
    enable = "${var.sse_enable}"
  }
  point_in_time_recovery {
    enable = "${var.pitr_enable}"
  }

  timeout {
    create = "${var.to_create}"
    update = "${var.to_update}"
    delete = "${var.to_delete}"
  }

  ttl {
    enabled        = "${var.ttl_enabled}"
    attribute_name = "${var.attribute_name}"
  }
}
