resource "vault_aws_secret_backend_role" "role" {
  name    = "${var.name}"
  backend = "${var.backend}"
  policy_arn  = "${var.policy_arn}"
}
