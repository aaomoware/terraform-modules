#--- CORS
resource "aws_s3_bucket" "c" {
  count               = "${var.cors && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  cors_rule {
    expose_headers  = ["${var.expose_headers}"]
    allowed_methods = ["${var.allowed_methods}"]
    allowed_origins = ["${var.allowed_origins}"]
    max_age_seconds = "${var.max_age_seconds}"
    allowed_headers = ["${var.allowed_headers}"]
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


#--- CORS, with bucket_prefix
resource "aws_s3_bucket" "cp" {
  count               = "${var.cors && var.prefix? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  cors_rule {
    expose_headers  = ["${var.expose_headers}"]
    allowed_methods = ["${var.allowed_methods}"]
    allowed_origins = ["${var.allowed_origins}"]
    max_age_seconds = "${var.max_age_seconds}"
    allowed_headers = ["${var.allowed_headers}"]
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


#--- CORS, with logging
resource "aws_s3_bucket" "cl" {
  count               = "${var.cors && var.logging && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  cors_rule {
    expose_headers  = ["${var.expose_headers}"]
    allowed_methods = ["${var.allowed_methods}"]
    allowed_origins = ["${var.allowed_origins}"]
    max_age_seconds = "${var.max_age_seconds}"
    allowed_headers = ["${var.allowed_headers}"]
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


#--- CORS logging, with bucket_prefix
resource "aws_s3_bucket" "cpl" {
  count               = "${var.cors && var.logging && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  cors_rule {
    expose_headers  = ["${var.expose_headers}"]
    allowed_methods = ["${var.allowed_methods}"]
    allowed_origins = ["${var.allowed_origins}"]
    max_age_seconds = "${var.max_age_seconds}"
    allowed_headers = ["${var.allowed_headers}"]
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
