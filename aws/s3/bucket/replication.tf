#--- replication
resource "aws_s3_bucket" "r" {
  count               = "${var.replication && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  replication_configuration {
    role = "${var.rc_role}"

    rules {
      id     = "${var.rc_id}"
      prefix = "${var.rc_prefix}"
      status = "${var.rc_status}"

      destination {
        bucket        = "${var.rc_bucket}"
        storage_class = "${var.rc_storage_class}"
      }
    }
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  tags {
    Name        = "${var.bucket}"
    Environment = "${var.env}"
  }
}


#--- replication, with bucket_prefix
resource "aws_s3_bucket" "rp" {
  count               = "${var.replication && var.prefix? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  replication_configuration {
    role = "${var.rc_role}"

    rules {
      id     = "${var.rc_id}"
      prefix = "${var.rc_prefix}"
      status = "${var.rc_status}"

      destination {
        bucket        = "${var.rc_bucket}"
        storage_class = "${var.rc_storage_class}"
      }
    }
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  tags {
    Name        = "${var.bucket}"
    Environment = "${var.env}"
  }
}


#--- replication, with logging
resource "aws_s3_bucket" "rl" {
  count               = "${var.replication && var.logging && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  replication_configuration {
    role = "${var.rc_role}"

    rules {
      id     = "${var.rc_id}"
      prefix = "${var.rc_prefix}"
      status = "${var.rc_status}"

      destination {
        bucket        = "${var.rc_bucket}"
        storage_class = "${var.rc_storage_class}"
      }
    }
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags {
    Name        = "${var.bucket}"
    Environment = "${var.env}"
  }
}


#--- replication logging, with bucket_prefix
resource "aws_s3_bucket" "rpl" {
  count               = "${var.replication && var.logging && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  replication_configuration {
    role = "${var.rc_role}"

    rules {
      id     = "${var.rc_id}"
      prefix = "${var.rc_prefix}"
      status = "${var.rc_status}"

      destination {
        bucket        = "${var.rc_bucket}"
        storage_class = "${var.rc_storage_class}"
      }
    }
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags {
    Name        = "${var.bucket}"
    Environment = "${var.env}"
  }
}
