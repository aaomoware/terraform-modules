resource "vault_aws_auth_backend_sts_role" "sts_role" {
  count = "${length(var.sts_role)}"

  backend    = "${var.backend}"
  sts_role   = "${element(var.sts_role, count.index)}"
  account_id = "${element(var.account_id, count.index)}"
}
