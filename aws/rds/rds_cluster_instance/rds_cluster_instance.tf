resource "aws_rds_cluster_instance" "rci" {

  tags                            = "${var.tags}"
  count                           = "${var.ccount}"
  engine                          = "${var.engine}"
  identifier                      = "${var.identifier}"
  instance_class                  = "${var.instance_class}"
  promotion_tier                  = "${var.promotion_tier}"
  engine_version                  = "${var.engine_version}"
  apply_immediately               = "${var.apply_immediately}"
  cluster_identifier              = "${var.cluster_identifier}"
  availability_zone               = "${var.availability_zone}"
  publicly_accessible             = "${var.publicly_accessible}"
  monitoring_interval             = "${var.monitoring_interval}"
  monitoring_role_arn             = "${var.monitoring_role_arn}"
  db_subnet_group_name            = "${var.db_subnet_group_name}"
  db_parameter_group_name         = "${var.db_parameter_group_name}"
  preferred_backup_window         = "${var.preferred_backup_window}"
  auto_minor_version_upgrade      = "${var.auto_minor_version_upgrade}"
  preferred_maintenance_window    = "${var.preferred_maintenance_window}"
  performance_insights_enabled    = "${var.performance_insights_enabled}"
  performance_insights_kms_key_id = "${var.performance_insights_kms_key_id}"

  timeouts {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }
}
