resource "vault_policy" "policy" {
  name = "${var.name}"
  policy = "${var.policy}"
}
