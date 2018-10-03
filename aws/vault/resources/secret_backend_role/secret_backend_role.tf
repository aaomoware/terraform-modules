resource "vault_aws_secret_backend_role" "role" {
  count = "${length(var.name)}"
  name    = "${element(var.name, count.index)}"
  backend = "${var.backend}"
  policy_arn  = "${var.policy_arn}"
}
