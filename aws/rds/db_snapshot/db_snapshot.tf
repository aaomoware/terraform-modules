resource "aws_db_snapshot" "dss" {
    db_instance_identifier = "${var.db_instance_identifier}"
    db_snapshot_identifier = "${var.db_snapshot_identifier}"
}
