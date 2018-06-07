#--- object lifecycle
resource "aws_s3_bucket" "l" {
  count               = "${var.lifecycle && !var.versioning ? 1 : 0}"

  acl                 = "${var.acl}"
  bucket              = "${var.bucket}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  tags = "${var.tags}"

  lifecycle_rule {
    id         = "${var.id}"
    tags       = "${var.l_tags}"
    prefix     = "${var.l_prefix}"
    enabled    = "${var.enabled}"
    transition = "${var.transition}"
    expiration = "${var.expiration}"
  }
}

#--- object lifecycle, with versioning
resource "aws_s3_bucket" "lv" {
  count               = "${var.lifecycle && var.versioning ? 1 : 0}"

  acl                 = "${var.acl}"
  bucket              = "${var.bucket}"
  region              = "${var.region}"
  policy              = "${var.policy}"
  force_destroy       = "${var.force_destroy}"
  request_payer       = "${var.request_payer}"
  acceleration_status = "${var.acceleration_status}"

  tags = "${var.tags}"

  versioning {
    enabled = "${var.enabled}"
  }

  lifecycle_rule {
    tags       = "${var.l_tags}"
    prefix     = "${var.l_prefix}"
    enabled    = "${var.enabled}"
    noncurrent_version_transition = "${var.noncurrent_version_expiration}"
  }
}
