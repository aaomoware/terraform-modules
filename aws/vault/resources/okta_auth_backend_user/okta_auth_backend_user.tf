resource "vault_okta_auth_backend_user" "oabus" {
    path = "${var.path}"
    groups = "${var.groups}"
    policies = "${var.policies}"
    username = "${var.username}"
}
