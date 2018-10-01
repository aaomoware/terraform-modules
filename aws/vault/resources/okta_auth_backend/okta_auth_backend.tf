resource "vault_okta_auth_backend" "okta_auth" {
    ttl = "${var.ttl}"
    token = "${var.token}"
    max_ttl = "${var.max_ttl}"
    description = "${var.description}"
    organization = "${var.organization}"
    bypass_okta_mfa = "${var.bypass_okta_mfa}"
}
