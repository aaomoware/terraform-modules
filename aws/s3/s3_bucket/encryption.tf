#--- encryption
resource "aws_s3_bucket" "e" {
  count               = "${var.encryption && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
        kms_master_key_id = "${var.kms_master_key_id}"
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


#--- encryption, with bucket_prefix
resource "aws_s3_bucket" "ep" {
  count               = "${var.encryption && var.prefix? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
        kms_master_key_id = "${var.kms_master_key_id}"
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


#--- encryption, with logging
resource "aws_s3_bucket" "el" {
  count               = "${var.encryption && var.logging && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
        kms_master_key_id = "${var.kms_master_key_id}"
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


#--- encryption logging, with bucket_prefix
resource "aws_s3_bucket" "epl" {
  count               = "${var.encryption && var.logging && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
        kms_master_key_id = "${var.kms_master_key_id}"
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
