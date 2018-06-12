resource "aws_iam_group_membership" "igm" {
  name  = "${var.name}"
  users = ["${var.users}"]
  group = "${var.groups}"
}
