resource "aws_efs_file_system" "efs" {
  tags                            = "${var.tags}"
  encrypted                       = "${var.encrypted}"
  kms_key_id                      = "${var.kms_key_id}"
  creation_token                  = "${var.creation_token}"
  throughput_mode                 = "${var.throughput_mode}"
  performance_mode                = "${var.performance_mode}"
}
