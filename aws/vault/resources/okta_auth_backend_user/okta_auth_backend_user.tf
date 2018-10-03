resource "vault_okta_auth_backend_user" "oabus" {
    count = "${length(var.username)}"
    
    path = "${var.path}"
    groups = "${var.groups}"
    policies = ["${var.policies}"]
    username = ["${element(var.username, count.index)}"]
}
