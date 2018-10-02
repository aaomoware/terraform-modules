resource "vault_policy" "policy" {
  count = "${length(var.name)}"
  
  name = "${element(var.name, count.index)}"
  policy = "${var.policy}"
}
