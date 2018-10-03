resource "vault_okta_auth_backend_group" "oabg" {
    count = "${length(var.group_name)}"
    
    path = "${var.path}"
    group_name = "${element(var.group_name, count.index)}"
    policies = ["${var.policies}"]
}
