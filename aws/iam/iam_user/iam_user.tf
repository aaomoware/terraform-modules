resource "aws_iam_user" "iu" {
  tags          = "${var.tags}"
  name          = "${var.name}"
  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
}
