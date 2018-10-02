resource "vault_okta_auth_backend_group" "oabg" {
    path = "${var.path}"
    group_name = "${element(var.group_name, count.index)}"
    policies = ["${element(var.policies, count.index)}"]
}
