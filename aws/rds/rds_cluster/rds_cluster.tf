resource "aws_rds_cluster" "rc" {
  count                               = "${var.s3_imports ? 0 : 1}"

  master_username                     = "${var.master_username}"
  master_password                     = "${var.master_password}"
  bucket_name                         = "${var.bucket_name}"

  engine                              = "${var.engineß}"
  backtrack_window                    = "${var.backtrack_window}"
  storage_encrypted                   = "${var.storage_encrypted}"
  apply_immediately                   = "${var.apply_immediately}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  backup_retention_period             = "${var.backup_retention_period}"
  preferred_maintenance_window        = "${var.preferred_maintenance_window}"

  port                                = "${var.port}"
  tags                                = "${var.tags}"
  iam_roles                           = ["${var.iam_roles}"]
  kms_key_id                          = "${var.kms_key_id}"
  source_region                       = "${var.source_region}"
  database_name                       = "${var.database_name}"
  engine_version                      = "${var.engine_version}"
  availability_zones                  = ["${var.availability_zones}"]
  cluster_identifier                  = "${var.cluster_identifier}"
  snapshot_identifier                 = "${var.snapshot_identifier}"
  db_subnet_group_name                = ["${var.db_subnet_group_name}"]
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  preferred_backup_window             = "${var.preferred_backup_window}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  replication_source_identifier       = "${var.replication_source_identifier}"
  db_cluster_parameter_group_name     = "${var.db_cluster_parameter_group_name}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"

  timeouts {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }
}


#--- s3_import
resource "aws_rds_cluster" "rc_s3_import" {
  count                               = "${var.s3_imports ? 1 : 0}"

  master_username                     = "${var.master_username}"
  master_password                     = "${var.master_password}"
  bucket_name                         = "${var.bucket_name}"

  engine                              = "${var.engineß}"
  backtrack_window                    = "${var.backtrack_window}"
  storage_encrypted                   = "${var.storage_encrypted}"
  apply_immediately                   = "${var.apply_immediately}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  backup_retention_period             = "${var.backup_retention_period}"
  preferred_maintenance_window        = "${var.preferred_maintenance_window}"

  port                                = "${var.port}"
  tags                                = "${var.tags}"
  iam_roles                           = ["${var.iam_roles}"]
  kms_key_id                          = "${var.kms_key_id}"
  source_region                       = "${var.source_region}"
  database_name                       = "${var.database_name}"
  engine_version                      = "${var.engine_version}"
  availability_zones                  = ["${var.availability_zones}"]
  cluster_identifier                  = "${var.cluster_identifier}"
  snapshot_identifier                 = "${var.snapshot_identifier}"
  db_subnet_group_name                = ["${var.db_subnet_group_name}"]
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  preferred_backup_window             = "${var.preferred_backup_window}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  replication_source_identifier       = "${var.replication_source_identifier}"
  db_cluster_parameter_group_name     = "${var.db_cluster_parameter_group_name}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"

  tags      = "${var.tags}"
  s3_import = "${var.s3_import}"

  timeouts {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }
}
