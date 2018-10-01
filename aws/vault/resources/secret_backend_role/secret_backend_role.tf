resource "vault_aws_secret_backend_role" "role" {
  name    = "${var.name}"
  policy  = "${var.policy}"
  backend = "${var.backend}"
}
