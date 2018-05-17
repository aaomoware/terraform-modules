#---basic
resource "aws_s3_bucket" "b" {
  count               = "${var.basic && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags = "${var.tags}"
}

#--- basic prefix
resource "aws_s3_bucket" "bp" {
  count               = "${var.basic && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags = "${var.tags}"
}

#---basic with logging
resource "aws_s3_bucket" "bl" {
  count               = "${var.basic && var.logging && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags = "${var.tags}"
}

#--- basic prefix, with logging
resource "aws_s3_bucket" "bpl" {
  count               = "${var.basic && var.logging && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  logging {
    target_bucket = "${var.target_bucket}"
    target_prefix = "${var.target_prefix}"
  }

  tags = "${var.tags}"
}
