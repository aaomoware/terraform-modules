resource "aws_redshift_cluster" "rc" {

  port                                = "${var.port}"
  encrypted                           = "${var.encrypted}"
  node_type                           = "${var.node_type}"
  kms_key_id                          = "${var.kms_key_id}"
  elastic_ip                          = "${var.elastic_ip}"
  cluster_type                        = "${var.cluster_type}"
  owner_account                       = "${var.owner_account}"
  database_name                       = "${var.database_name}"
  number_of_nodes                     = "${var.number_of_nodes}"
  cluster_version                     = "${var.cluster_version}"
  master_username                     = "${var.master_username}"
  master_password                     = "${var.master_password}"
  availability_zone                   = "${var.availability_zone}"
  cluster_identifier                  = "${var.cluster_identifier}"
  snapshot_identifier                 = "${var.snapshot_identifier}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  publicly_accessible                 = "${var.publicly_accessible}"
  enhanced_vpc_routing                = "${var.enhanced_vpc_routing}"
  allow_version_upgrade               = "${var.allow_version_upgrade}"
  cluster_subnet_group_name           = "${var.cluster_subnet_group_name}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  snapshot_cluster_identifier         = "${var.snapshot_cluster_identifier}"
  cluster_parameter_group_name        = "${var.cluster_parameter_group_name}"
  preferred_maintenance_window        = "${var.preferred_maintenance_window}"
  automated_snapshot_retention_period = "${var.automated_snapshot_retention_period}"

  iam_roles                           = ["${var.iam_roles}"]
  vpc_security_group_ids              = ["${var.vpc_security_group_ids}"]
  cluster_security_groups             = ["${var.cluster_security_groups}"]

  logging {
    enable        = "${var.enable}"
    bucket_name   = "${var.bucket_name}"
    s3_key_prefix = "${var.s3_key_prefix}"
  }

  snapshot_copy {
    grant_name         = "${var.grant_name}"
    retention_period   = "${var.retention_period}"
    destination_region = "${var.destination_region}"
  }

  lifecyle {
    create_before_destroy  = true
  }
}
