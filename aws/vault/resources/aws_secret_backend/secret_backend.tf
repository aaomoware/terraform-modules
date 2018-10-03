resource "vault_aws_secret_backend" "asb" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  path = "${var.backend_path}"
  region = "${var.region}"
  description = "${var.description}"
  max_lease_ttl_seconds = "${var.max_lease_ttl_seconds}"
  default_lease_ttl_seconds = "${var.default_lease_ttl_seconds}"
}
