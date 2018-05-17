resource "aws_elasticsearch_domain" "ed" {
  domain_name           = "${var.domain_name}"
  access_policies       = "${var.access_policies}"
  elasticsearch_version = "${var.elasticsearch_version}"

  cluster_config {
    instance_type            = "${var.instance_type}"
    instance_count           = "${var.instance_count}"
    dedicated_master_type    = "${var.dedicated_master_type}"
    dedicated_master_count   = "${var.dedicated_master_count}"
    zone_awareness_enabled   = "${var.zone_awareness_enabled}"
    dedicated_master_enabled = "${var.dedicated_master_enabled}"
  }

  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }

  encrypt_at_rest {
    enabled       = "${var.ear_enabled}"
    kms_key_id    = "${var.kms_key_id}"
  }

  ebs_options {
    iops          = "${var.iops}"
    ebs_enabled   = "${var.ebs_enabled}"
    volume_type   = "${var.volume_type}"
    volume_size   = "${var.volume_size}"
  }

  log_publishing_options {
    enabled                   = "${var.lpo_enabled}"
    log_type                  = "${var.log_type}"
    cloudwatch_log_group_arn  = "${var.cloudwatch_log_group_arn}"
  }

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
