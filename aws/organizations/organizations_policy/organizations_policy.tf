resource "aws_organizations_policy" "op" {
  name        = "${var.name}"
  type        = "${var.type}"
  content     = "${var.content}"
  description = "${var.description}"
}
