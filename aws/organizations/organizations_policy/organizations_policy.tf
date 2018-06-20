resource "aws_organizations_policy" "op" {
  count       = "${length(var.names)}"

  name        = "${element(var.name, count.index)}"
  type        = "${element(var.type, count.index)}"
  content     = "${element(var.content, count.index)}"
  description = "${element(var.description, count.index)}"
}
