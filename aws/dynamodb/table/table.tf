resource "aws_dynamodb_table" "dt" {
  count            = "${var.simple}"

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


#---local_secondary_index
resource "aws_dynamodb_table" "dt_local_index" {
  count            = "${var.local_secondary_index}"

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

  local_secondary_index {
    name               = "${var.local_secondary_index_name}"
    range_key          = "${var.local_secondary_index_range_key}"
    projection_type    = "${var.local_secondary_index_projection_type}"
    non_key_attributes = "${var.local_secondary_index_non_key_attributes}"
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

#---global_secondary_index
resource "aws_dynamodb_table" "dt_global_index" {
  count            = "${var.local_secondary_index}"

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

  global_secondary_index {
    name               = "${var.global_secondary_index_name}"
    hash_key           = "${var.global_secondary_index_hash_key}"
    range_key          = "${var.global_secondary_index_range_key}"
    read_capacity      = "${var.global_secondary_index_read_capacity}"
    write_capacity     = "${var.global_secondary_index_write_capacity}"
    projection_type    = "${var.global_secondary_index_projection_type}"
    non_key_attributes = "${var.global_secondary_index_non_key_attributes}"

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
