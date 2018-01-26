resource "aws_ssm_patch_baseline" "ssmpb" {
  name             = "${var.name}"
  description      = "${var.description}"
  approved_patches = "${var.approved_patches}"
  rejected_patches = "${var.rejected_patches}"

  global_filter {
    key = "${var.global_filter_key_1}"
    values = ["${var.global_filter_values_2}"]
  }

  approval_rule {
    compliance_level   = "${var.compliance_level}"
    approve_after_days = "${var.approve_after_days}"

    patch_filter {
      key    = "${var.patch_filter_key_1}"
      values = ["${var.patch_filter_values_1}"]
    }

    patch_filter {
      key    = "${var.patch_filter_key_2}"
      values = ["${var.patch_filter_values_2}"]
    }
  }
}
