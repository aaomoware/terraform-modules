#---hosting
resource "aws_s3_bucket" "h" {
  count               = "${var.wsh && !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  website {
    routing_rules            = "${var.routing_rules}"
    index_document           = "${var.index_document}"
    error_document           = "${var.error_document}"
    redirect_all_requests_to = "${var.redirect_all_requests_to}"
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  tags = "${var.tags}"
}


#---hosting with prefix
resource "aws_s3_bucket" "hp" {
  count               = "${var.wsh && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  website {
    routing_rules            = "${var.routing_rules}"
    index_document           = "${var.index_document}"
    error_document           = "${var.error_document}"
    redirect_all_requests_to = "${var.redirect_all_requests_to}"
  }

  versioning {
    enabled     = "${var.enabled}"
    mfa_delete  = "${var.mfa_delete}"
  }

  tags = "${var.tags}"
}




#---hosting with logging
resource "aws_s3_bucket" "hl" {
  count               = "${var.wsh && var.logging !var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  bucket              = "${var.bucket}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  website {
    routing_rules            = "${var.routing_rules}"
    index_document           = "${var.index_document}"
    error_document           = "${var.error_document}"
    redirect_all_requests_to = "${var.redirect_all_requests_to}"
  }

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


#---website hosting logging, with prefix
resource "aws_s3_bucket" "hpl" {
  count               = "${var.wsh && var.logging && var.prefix ? 1 : 0}"

  acl                 = "${var.acl}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  bucket_prefix       = "${var.bucket}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  website {
    routing_rules            = "${var.routing_rules}"
    index_document           = "${var.index_document}"
    error_document           = "${var.error_document}"
    redirect_all_requests_to = "${var.redirect_all_requests_to}"
  }

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
