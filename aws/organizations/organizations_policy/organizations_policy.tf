resource "aws_organizations_policy" "op" {
  count       = "${length(var.name)}"

  name        = "${element(var.name, count.index)}"
  type        = "${var.type}"
  content     = "${element(var.content, count.index)}"
  description = "${element(var.description, count.index)}"
}
