resource "aws_ssm_maintenance_window" "ssmm" {
  name     = "${var.name}"
  cutoff   = "${var.cutoff}"
  schedule = "${var.schedule}"
  duration = "${var.duration}"
  allow_unassociated_targets = "${var.allow_unassociated_targets}"
}
