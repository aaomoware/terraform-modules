resource "aws_db_instance" "dis" {
  count                = "${var.s3_import ? 0 : 1}"

  engine                              = "${var.engine}"
  password                            = "${var.password}"
  username                            = "${var.username}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"

  storage_encrypted                   = "${var.storage_encrypted}"
  apply_immediately                   = "${var.apply_immediately}"
  monitoring_interval                 = "${var.monitoring_interval}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  publicly_accessible                 = "${var.publicly_accessible}"
  copy_tags_to_snapshot               = "${var.copy_tags_to_snapshot}"
  auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"

  tags                                = "${var.tags}"
  iops                                = "${var.iops}"
  name                                = "${var.name}"
  port                                = "${var.port}"
  multi_az                            = "${var.multi_az}"
  timezone                            = "${var.timezone}"
  kms_key_id                          = "${var.kms_key_id}"
  identifier                          = "${var.identifier}"
  storage_type                        = "${var.storage_type}"
  license_model                       = "${var.license_model}"
  backup_window                       = "${var.backup_window}"
  engine_version                      = "${var.engine_version}"
  option_group_name                   = "${var.option_group_name}"
  availability_zone                   = "${var.availability_zone}"
  character_set_name                  = "${var.character_set_name}"
  maintenance_window                  = "${var.maintenance_window}"
  monitoring_role_arn                 = "${var.monitoring_role_arn}"
  snapshot_identifier                 = "${var.snapshot_identifier}"
  replicate_source_db                 = "${var.replicate_source_db}"
  parameter_group_name                = "${var.parameter_group_name}"
  db_subnet_group_name                = "${var.db_subnet_group_name}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  backup_retention_period             = "${var.backup_retention_period}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
  enabled_cloudwatch_logs_exports     = "${var.enabled_cloudwatch_logs_exports}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"

  timeout {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }
}


#--- s3_import
resource "aws_db_instance" "dis_s3_import" {
  count                = "${var.s3_import ? 1 : 0}"

  engine                              = "${var.engine}"
  password                            = "${var.password}"
  username                            = "${var.username}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"

  storage_encrypted                   = "${var.storage_encrypted}"
  apply_immediately                   = "${var.apply_immediately}"
  monitoring_interval                 = "${var.monitoring_interval}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  publicly_accessible                 = "${var.publicly_accessible}"
  copy_tags_to_snapshot               = "${var.copy_tags_to_snapshot}"
  auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"

  tags                                = "${var.tags}"
  iops                                = "${var.iops}"
  name                                = "${var.name}"
  port                                = "${var.port}"
  multi_az                            = "${var.multi_az}"
  timezone                            = "${var.timezone}"
  kms_key_id                          = "${var.kms_key_id}"
  identifier                          = "${var.identifier}"
  storage_type                        = "${var.storage_type}"
  license_model                       = "${var.license_model}"
  backup_window                       = "${var.backup_window}"
  engine_version                      = "${var.engine_version}"
  option_group_name                   = "${var.option_group_name}"
  availability_zone                   = "${var.availability_zone}"
  character_set_name                  = "${var.character_set_name}"
  maintenance_window                  = "${var.maintenance_window}"
  monitoring_role_arn                 = "${var.monitoring_role_arn}"
  snapshot_identifier                 = "${var.snapshot_identifier}"
  replicate_source_db                 = "${var.replicate_source_db}"
  parameter_group_name                = "${var.parameter_group_name}"
  db_subnet_group_name                = "${var.db_subnet_group_name}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  backup_retention_period             = "${var.backup_retention_period}"
  final_snapshot_identifier           = "${var.final_snapshot_identifier}"
  allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
  enabled_cloudwatch_logs_exports     = "${var.enabled_cloudwatch_logs_exports}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"

  s3_import {
    bucket_name           = "${var.bucket_name}"
    source_engine         = "${var.source_engine}"
    bucket_prefix         = "${var.bucket_prefix}"
    ingestion_role        = "${var.ingestion_role}"
    source_engine_version = "${var.source_engine_version}"
  }

  timeout {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }
}
