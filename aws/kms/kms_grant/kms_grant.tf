resource "aws_kms_grant" "kg" {
  name                  = "${var.name}"
  key_id                = "${var.key_id}"
  operations            = ["${var.operations}"]
  retire_on_delete      = "${var.retire_on_delete}"
  grantee_principal     = "${var.grantee_principal}"
  retiree_principal     = "${var.retiree_principal}"
  grant_creation_tokens = "${var.grant_creation_tokens}"

  constraints {
    encryption_context_equals = "${var.encryption_context_equals}"
    encryption_context_subset = "${var.encryption_context_subset}"
  }
}
